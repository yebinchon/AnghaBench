
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gen_pool {int dummy; } ;


 struct gen_pool* sram_pool ;

struct gen_pool *sram_get_gen_pool(void)
{
 return sram_pool;
}
