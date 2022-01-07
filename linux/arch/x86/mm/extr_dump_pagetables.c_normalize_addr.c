
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_X86_64 ;
 int IS_ENABLED (int ) ;
 int __VIRTUAL_MASK_SHIFT ;

__attribute__((used)) static unsigned long normalize_addr(unsigned long u)
{
 int shift;
 if (!IS_ENABLED(CONFIG_X86_64))
  return u;

 shift = 64 - (__VIRTUAL_MASK_SHIFT + 1);
 return (signed long)(u << shift) >> shift;
}
