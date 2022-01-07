
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;


 unsigned int EVENT_CACHE_SEL_SHIFT ;
 unsigned int MMCR1_DC_IC_QUAL_MASK ;

__attribute__((used)) static unsigned int dc_ic_rld_quad_l1_sel(u64 event)
{
 unsigned int cache;

 cache = (event >> EVENT_CACHE_SEL_SHIFT) & MMCR1_DC_IC_QUAL_MASK;
 return cache;
}
