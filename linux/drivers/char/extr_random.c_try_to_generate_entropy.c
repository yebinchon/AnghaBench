
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int crng_ready () ;
 int del_timer_sync (struct timer_list*) ;
 int destroy_timer_on_stack (struct timer_list*) ;
 int entropy_timer ;
 int input_pool ;
 scalar_t__ jiffies ;
 int mix_pool_bytes (int *,void**,int) ;
 int mod_timer (struct timer_list*,scalar_t__) ;
 void* random_get_entropy () ;
 int schedule () ;
 int timer_pending (struct timer_list*) ;
 int timer_setup_on_stack (struct timer_list*,int ,int ) ;

__attribute__((used)) static void try_to_generate_entropy(void)
{
 struct {
  unsigned long now;
  struct timer_list timer;
 } stack;

 stack.now = random_get_entropy();


 if (stack.now == random_get_entropy())
  return;

 timer_setup_on_stack(&stack.timer, entropy_timer, 0);
 while (!crng_ready()) {
  if (!timer_pending(&stack.timer))
   mod_timer(&stack.timer, jiffies+1);
  mix_pool_bytes(&input_pool, &stack.now, sizeof(stack.now));
  schedule();
  stack.now = random_get_entropy();
 }

 del_timer_sync(&stack.timer);
 destroy_timer_on_stack(&stack.timer);
 mix_pool_bytes(&input_pool, &stack.now, sizeof(stack.now));
}
