
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static int s390_crypto_shash_parmsize(int func)
{
 switch (func) {
 case 130:
  return 20;
 case 129:
  return 32;
 case 128:
  return 64;
 case 134:
 case 133:
 case 132:
 case 131:
  return 200;
 default:
  return -EINVAL;
 }
}
