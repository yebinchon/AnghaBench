
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Index_Writeback_Inv_D ;
 unsigned long KSEG0 ;
 int cache_unroll (unsigned long,int ) ;

__attribute__((used)) static __inline__ void blast_dcache(unsigned long size, unsigned long lsize)
{
 unsigned long start = KSEG0;
 unsigned long end = (start + size);

 while(start < end) {
  cache_unroll(start,Index_Writeback_Inv_D);
  start += lsize;
 }
}
