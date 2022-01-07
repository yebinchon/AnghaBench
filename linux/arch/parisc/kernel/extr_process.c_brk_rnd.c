
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long BRK_RND_MASK ;
 unsigned long PAGE_SHIFT ;
 unsigned long get_random_int () ;

__attribute__((used)) static inline unsigned long brk_rnd(void)
{
 return (get_random_int() & BRK_RND_MASK) << PAGE_SHIFT;
}
