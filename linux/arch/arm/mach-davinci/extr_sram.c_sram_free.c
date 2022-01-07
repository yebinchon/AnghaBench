
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gen_pool_free (int ,unsigned long,size_t) ;
 int sram_pool ;

void sram_free(void *addr, size_t len)
{
 gen_pool_free(sram_pool, (unsigned long) addr, len);
}
