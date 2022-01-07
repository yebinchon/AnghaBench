
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct crypto_user_alg {int cru_driver_name; int cru_name; } ;
struct crypto_instance {int dummy; } ;
struct crypto_alg {int cra_flags; int cra_refcnt; } ;


 int CAP_NET_ADMIN ;
 int CRYPTO_ALG_INSTANCE ;
 int EBUSY ;
 int EINVAL ;
 int ENOENT ;
 int EPERM ;
 struct crypto_alg* crypto_alg_match (struct crypto_user_alg*,int) ;
 int crypto_mod_put (struct crypto_alg*) ;
 int crypto_unregister_instance (struct crypto_instance*) ;
 int netlink_capable (struct sk_buff*,int ) ;
 struct crypto_user_alg* nlmsg_data (struct nlmsghdr*) ;
 int null_terminated (int ) ;
 int refcount_read (int *) ;

__attribute__((used)) static int crypto_del_alg(struct sk_buff *skb, struct nlmsghdr *nlh,
     struct nlattr **attrs)
{
 struct crypto_alg *alg;
 struct crypto_user_alg *p = nlmsg_data(nlh);
 int err;

 if (!netlink_capable(skb, CAP_NET_ADMIN))
  return -EPERM;

 if (!null_terminated(p->cru_name) || !null_terminated(p->cru_driver_name))
  return -EINVAL;

 alg = crypto_alg_match(p, 1);
 if (!alg)
  return -ENOENT;






 err = -EINVAL;
 if (!(alg->cra_flags & CRYPTO_ALG_INSTANCE))
  goto drop_alg;

 err = -EBUSY;
 if (refcount_read(&alg->cra_refcnt) > 2)
  goto drop_alg;

 err = crypto_unregister_instance((struct crypto_instance *)alg);

drop_alg:
 crypto_mod_put(alg);
 return err;
}
