
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool hpte_soft_invalid(unsigned long hidx)
{
 return ((hidx & 0xfUL) == 0xfUL);
}
