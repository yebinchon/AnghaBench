
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CACHE_INV ;
 int INS_CACHE ;
 int cache_op_range (unsigned long,unsigned long,int,int ) ;

void icache_inv_range(unsigned long start, unsigned long end)
{
 cache_op_range(start, end, INS_CACHE|CACHE_INV, 0);
}
