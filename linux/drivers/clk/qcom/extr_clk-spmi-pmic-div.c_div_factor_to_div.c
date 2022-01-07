
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int div_factor_to_div(unsigned int div_factor)
{
 if (!div_factor)
  div_factor = 1;

 return 1 << (div_factor - 1);
}
