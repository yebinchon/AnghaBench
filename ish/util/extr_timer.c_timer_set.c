
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct timer_spec {int value; int interval; } ;
struct timer {int running; int lock; int thread; int interval; struct timespec start; int end; } ;


 int SIGUSR1 ;
 int lock (int *) ;
 int pthread_create (int *,int *,int ,struct timer*) ;
 int pthread_detach (int ) ;
 int pthread_kill (int ,int ) ;
 int timer_thread ;
 int timespec_add (struct timespec,int ) ;
 int timespec_is_zero (int ) ;
 struct timespec timespec_now () ;
 int timespec_subtract (int ,struct timespec) ;
 int unlock (int *) ;

int timer_set(struct timer *timer, struct timer_spec spec, struct timer_spec *oldspec) {
    lock(&timer->lock);
    struct timespec now = timespec_now();
    if (oldspec != ((void*)0)) {
        oldspec->value = timespec_subtract(timer->end, now);
        oldspec->interval = timer->interval;
    }

    timer->start = now;
    timer->end = timespec_add(timer->start, spec.value);
    timer->interval = spec.interval;
    if (!timespec_is_zero(spec.value)) {
        if (!timer->running) {
            timer->running = 1;
            pthread_create(&timer->thread, ((void*)0), timer_thread, timer);
            pthread_detach(timer->thread);
        }
    } else {
        if (timer->running) {
            timer->running = 0;
            pthread_kill(timer->thread, SIGUSR1);
        }
    }
    unlock(&timer->lock);
    return 0;
}
