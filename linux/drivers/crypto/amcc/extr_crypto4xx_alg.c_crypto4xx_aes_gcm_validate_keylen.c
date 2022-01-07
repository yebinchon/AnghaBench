
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static int crypto4xx_aes_gcm_validate_keylen(unsigned int keylen)
{
 switch (keylen) {
 case 16:
 case 24:
 case 32:
  return 0;
 default:
  return -EINVAL;
 }
}
