
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtattr {scalar_t__ rta_type; } ;
struct crypto_attr_type {int dummy; } ;


 scalar_t__ CRYPTOA_TYPE ;
 int EINVAL ;
 int ENOENT ;
 struct crypto_attr_type* ERR_PTR (int ) ;
 struct crypto_attr_type* RTA_DATA (struct rtattr*) ;
 int RTA_PAYLOAD (struct rtattr*) ;

struct crypto_attr_type *crypto_get_attr_type(struct rtattr **tb)
{
 struct rtattr *rta = tb[0];
 struct crypto_attr_type *algt;

 if (!rta)
  return ERR_PTR(-ENOENT);
 if (RTA_PAYLOAD(rta) < sizeof(*algt))
  return ERR_PTR(-EINVAL);
 if (rta->rta_type != CRYPTOA_TYPE)
  return ERR_PTR(-EINVAL);

 algt = RTA_DATA(rta);

 return algt;
}
