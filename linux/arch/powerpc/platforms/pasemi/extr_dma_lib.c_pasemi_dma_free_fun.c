
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int MAX_FLAGS ;
 int fun_free ;
 int set_bit (int,int ) ;
 int test_bit (int,int ) ;

void pasemi_dma_free_fun(int fun)
{
 BUG_ON(test_bit(fun, fun_free));
 BUG_ON(fun >= MAX_FLAGS);
 set_bit(fun, fun_free);
}
