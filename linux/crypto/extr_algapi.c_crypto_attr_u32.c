
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtattr {scalar_t__ rta_type; } ;
struct crypto_attr_u32 {int num; } ;


 scalar_t__ CRYPTOA_U32 ;
 int EINVAL ;
 int ENOENT ;
 struct crypto_attr_u32* RTA_DATA (struct rtattr*) ;
 int RTA_PAYLOAD (struct rtattr*) ;

int crypto_attr_u32(struct rtattr *rta, u32 *num)
{
 struct crypto_attr_u32 *nu32;

 if (!rta)
  return -ENOENT;
 if (RTA_PAYLOAD(rta) < sizeof(*nu32))
  return -EINVAL;
 if (rta->rta_type != CRYPTOA_U32)
  return -EINVAL;

 nu32 = RTA_DATA(rta);
 *num = nu32->num;

 return 0;
}
