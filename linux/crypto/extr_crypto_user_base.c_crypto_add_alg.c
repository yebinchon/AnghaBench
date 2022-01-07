
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct crypto_user_alg {char* cru_name; char* cru_driver_name; int cru_mask; int cru_type; } ;
struct crypto_alg {int cra_priority; } ;


 int CAP_NET_ADMIN ;
 size_t CRYPTOCFGA_PRIORITY_VAL ;
 int EEXIST ;
 int EINVAL ;
 int EPERM ;
 scalar_t__ IS_ERR (struct crypto_alg*) ;
 int PTR_ERR (struct crypto_alg*) ;
 struct crypto_alg* crypto_alg_match (struct crypto_user_alg*,int) ;
 struct crypto_alg* crypto_alg_mod_lookup (char const*,int ,int ) ;
 int crypto_alg_sem ;
 int crypto_mod_put (struct crypto_alg*) ;
 int down_write (int *) ;
 int netlink_capable (struct sk_buff*,int ) ;
 int nla_get_u32 (struct nlattr*) ;
 struct crypto_user_alg* nlmsg_data (struct nlmsghdr*) ;
 int null_terminated (char*) ;
 scalar_t__ strlen (char*) ;
 int up_write (int *) ;

__attribute__((used)) static int crypto_add_alg(struct sk_buff *skb, struct nlmsghdr *nlh,
     struct nlattr **attrs)
{
 int exact = 0;
 const char *name;
 struct crypto_alg *alg;
 struct crypto_user_alg *p = nlmsg_data(nlh);
 struct nlattr *priority = attrs[CRYPTOCFGA_PRIORITY_VAL];

 if (!netlink_capable(skb, CAP_NET_ADMIN))
  return -EPERM;

 if (!null_terminated(p->cru_name) || !null_terminated(p->cru_driver_name))
  return -EINVAL;

 if (strlen(p->cru_driver_name))
  exact = 1;

 if (priority && !exact)
  return -EINVAL;

 alg = crypto_alg_match(p, exact);
 if (alg) {
  crypto_mod_put(alg);
  return -EEXIST;
 }

 if (strlen(p->cru_driver_name))
  name = p->cru_driver_name;
 else
  name = p->cru_name;

 alg = crypto_alg_mod_lookup(name, p->cru_type, p->cru_mask);
 if (IS_ERR(alg))
  return PTR_ERR(alg);

 down_write(&crypto_alg_sem);

 if (priority)
  alg->cra_priority = nla_get_u32(priority);

 up_write(&crypto_alg_sem);

 crypto_mod_put(alg);

 return 0;
}
