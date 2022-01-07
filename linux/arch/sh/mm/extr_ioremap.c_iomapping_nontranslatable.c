
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ P3SEG ;
 unsigned long P3_ADDR_MAX ;
 scalar_t__ PXSEG (unsigned long) ;

__attribute__((used)) static inline int iomapping_nontranslatable(unsigned long offset)
{
 return 0;
}
