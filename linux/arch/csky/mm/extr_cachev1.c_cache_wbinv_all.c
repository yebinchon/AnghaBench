
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CACHE_CLR ;
 int CACHE_INV ;
 int DATA_CACHE ;
 int INS_CACHE ;
 int cache_op_all (int,int ) ;

void cache_wbinv_all(void)
{
 cache_op_all(INS_CACHE|DATA_CACHE|CACHE_CLR|CACHE_INV, 0);
}
