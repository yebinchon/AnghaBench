
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int drbg_flag_t ;





 int DRBG_STRENGTH_MASK ;

__attribute__((used)) static inline unsigned short drbg_sec_strength(drbg_flag_t flags)
{
 switch (flags & DRBG_STRENGTH_MASK) {
 case 130:
  return 16;
 case 129:
  return 24;
 case 128:
  return 32;
 default:
  return 32;
 }
}
