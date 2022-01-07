
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SHIFT ;
 unsigned long get_random_long () ;
 scalar_t__ is_32bit_task () ;

__attribute__((used)) static inline unsigned long brk_rnd(void)
{
        unsigned long rnd = 0;


 if (is_32bit_task())
  rnd = (get_random_long() % (1UL<<(23-PAGE_SHIFT)));
 else
  rnd = (get_random_long() % (1UL<<(30-PAGE_SHIFT)));

 return rnd << PAGE_SHIFT;
}
