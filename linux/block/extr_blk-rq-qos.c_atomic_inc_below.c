
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_t ;


 unsigned int atomic_cmpxchg (int *,unsigned int,unsigned int) ;
 unsigned int atomic_read (int *) ;

__attribute__((used)) static bool atomic_inc_below(atomic_t *v, unsigned int below)
{
 unsigned int cur = atomic_read(v);

 for (;;) {
  unsigned int old;

  if (cur >= below)
   return 0;
  old = atomic_cmpxchg(v, cur, cur + 1);
  if (old == cur)
   break;
  cur = old;
 }

 return 1;
}
