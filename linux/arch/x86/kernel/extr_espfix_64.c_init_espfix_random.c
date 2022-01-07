
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESPFIX_PAGE_SPACE ;
 unsigned long ESPFIX_STACKS_PER_PAGE ;
 int arch_get_random_long (unsigned long*) ;
 unsigned long page_random ;
 unsigned long rdtsc () ;
 unsigned long slot_random ;

__attribute__((used)) static void init_espfix_random(void)
{
 unsigned long rand;





 if (!arch_get_random_long(&rand)) {

  rand = rdtsc();
  rand *= 0xc345c6b72fd16123UL;
 }

 slot_random = rand % ESPFIX_STACKS_PER_PAGE;
 page_random = (rand / ESPFIX_STACKS_PER_PAGE)
  & (ESPFIX_PAGE_SPACE - 1);
}
