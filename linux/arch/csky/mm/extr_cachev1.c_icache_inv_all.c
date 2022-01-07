
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CACHE_INV ;
 int INS_CACHE ;
 int cache_op_all (int,int ) ;

void icache_inv_all(void)
{
 cache_op_all(INS_CACHE|CACHE_INV, 0);
}
