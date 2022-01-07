
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long
s_reg_to_mem (unsigned long s_reg)
{
 return ((s_reg >> 62) << 30) | ((s_reg << 5) >> 34);
}
