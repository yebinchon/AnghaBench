
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct event_base {int dummy; } ;
struct event {int dummy; } ;
struct cond_wait {int lock; int cond; } ;
typedef int THREAD_FN ;


 int EVLOCK_LOCK (int,int ) ;
 int EVLOCK_UNLOCK (int,int ) ;
 int EVTHREAD_ALLOC_COND (int) ;
 int EVTHREAD_ALLOC_LOCK (int,int ) ;
 scalar_t__ EVTHREAD_COND_WAIT (int,int) ;
 int EVTHREAD_FREE_COND (int) ;
 int EVTHREAD_FREE_LOCK (int,int ) ;
 int NUM_ITERATIONS ;
 int NUM_THREADS ;
 int THREAD_RETURN () ;
 int assert (int) ;
 int count ;
 int count_lock ;
 int event_base_loopexit (struct event_base*,int *) ;
 scalar_t__ evtimer_add (struct event*,struct timeval*) ;
 int evtimer_assign (struct event*,struct event_base*,int ,struct cond_wait*) ;
 int evutil_timerclear (struct timeval*) ;
 int wake_all_timeout ;

__attribute__((used)) static THREAD_FN
basic_thread(void *arg)
{
 struct cond_wait cw;
 struct event_base *base = arg;
 struct event ev;
 int i = 0;

 EVTHREAD_ALLOC_LOCK(cw.lock, 0);
 EVTHREAD_ALLOC_COND(cw.cond);
 assert(cw.lock);
 assert(cw.cond);

 evtimer_assign(&ev, base, wake_all_timeout, &cw);
 for (i = 0; i < NUM_ITERATIONS; i++) {
  struct timeval tv;
  evutil_timerclear(&tv);
  tv.tv_sec = 0;
  tv.tv_usec = 3000;

  EVLOCK_LOCK(cw.lock, 0);


  assert(evtimer_add(&ev, &tv) == 0);

  assert(EVTHREAD_COND_WAIT(cw.cond, cw.lock) == 0);
  EVLOCK_UNLOCK(cw.lock, 0);

  EVLOCK_LOCK(count_lock, 0);
  ++count;
  EVLOCK_UNLOCK(count_lock, 0);
 }


 EVLOCK_LOCK(count_lock, 0);
 if (count >= NUM_THREADS * NUM_ITERATIONS)
  event_base_loopexit(base, ((void*)0));
 EVLOCK_UNLOCK(count_lock, 0);

 EVTHREAD_FREE_LOCK(cw.lock, 0);
 EVTHREAD_FREE_COND(cw.cond);

 THREAD_RETURN();
}
