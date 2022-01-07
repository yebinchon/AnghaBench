
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct crypto_user_alg {int cru_driver_name; int cru_name; } ;
struct crypto_alg {int cra_priority; } ;


 int CAP_NET_ADMIN ;
 size_t CRYPTOCFGA_PRIORITY_VAL ;
 int EINVAL ;
 int ENOENT ;
 int EPERM ;
 int LIST_HEAD (int ) ;
 struct crypto_alg* crypto_alg_match (struct crypto_user_alg*,int) ;
 int crypto_alg_sem ;
 int crypto_mod_put (struct crypto_alg*) ;
 int crypto_remove_final (int *) ;
 int crypto_remove_spawns (struct crypto_alg*,int *,int *) ;
 int down_write (int *) ;
 int list ;
 int netlink_capable (struct sk_buff*,int ) ;
 int nla_get_u32 (struct nlattr*) ;
 struct crypto_user_alg* nlmsg_data (struct nlmsghdr*) ;
 int null_terminated (int ) ;
 int strlen (int ) ;
 int up_write (int *) ;

__attribute__((used)) static int crypto_update_alg(struct sk_buff *skb, struct nlmsghdr *nlh,
        struct nlattr **attrs)
{
 struct crypto_alg *alg;
 struct crypto_user_alg *p = nlmsg_data(nlh);
 struct nlattr *priority = attrs[CRYPTOCFGA_PRIORITY_VAL];
 LIST_HEAD(list);

 if (!netlink_capable(skb, CAP_NET_ADMIN))
  return -EPERM;

 if (!null_terminated(p->cru_name) || !null_terminated(p->cru_driver_name))
  return -EINVAL;

 if (priority && !strlen(p->cru_driver_name))
  return -EINVAL;

 alg = crypto_alg_match(p, 1);
 if (!alg)
  return -ENOENT;

 down_write(&crypto_alg_sem);

 crypto_remove_spawns(alg, &list, ((void*)0));

 if (priority)
  alg->cra_priority = nla_get_u32(priority);

 up_write(&crypto_alg_sem);

 crypto_mod_put(alg);
 crypto_remove_final(&list);

 return 0;
}
