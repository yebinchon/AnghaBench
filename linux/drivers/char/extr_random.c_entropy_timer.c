
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int credit_entropy_bits (int *,int) ;
 int input_pool ;

__attribute__((used)) static void entropy_timer(struct timer_list *t)
{
 credit_entropy_bits(&input_pool, 1);
}
