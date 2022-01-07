
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spin_multi_state {int loops; int exit_wait; int lock; int start_wait; int enter_wait; } ;
struct spin_multi_per_thread {int start; struct spin_multi_state* state; } ;


 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int ktime_get () ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

__attribute__((used)) static int multi_other(void *data)
{
 int loops;
 int cont;
 struct spin_multi_per_thread *pt = data;
 struct spin_multi_state *s = pt->state;

 loops = s->loops;
 cont = 1;

 atomic_dec(&s->enter_wait);

 while (atomic_read(&s->enter_wait))
  ;

 pt->start = ktime_get();

 atomic_dec(&s->start_wait);

 while (atomic_read(&s->start_wait))
  ;

 while (cont) {
  raw_spin_lock(&s->lock);
  loops--;
  if (loops == 0)
   cont = 0;
  raw_spin_unlock(&s->lock);
 }

 atomic_dec(&s->exit_wait);
 while (atomic_read(&s->exit_wait))
  ;
 return 0;
}
