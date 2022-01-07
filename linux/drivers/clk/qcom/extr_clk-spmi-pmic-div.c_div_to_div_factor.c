
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ilog2 (unsigned int) ;
 unsigned int min (scalar_t__,int) ;

__attribute__((used)) static inline unsigned int div_to_div_factor(unsigned int div)
{
 return min(ilog2(div) + 1, 7);
}
