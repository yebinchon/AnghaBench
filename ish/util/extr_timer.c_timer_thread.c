
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct timer {int running; int lock; scalar_t__ dead; struct timespec interval; int start; int end; int data; int (* callback ) (int ) ;} ;


 int free (struct timer*) ;
 int lock (int *) ;
 int nanosleep (struct timespec*,int *) ;
 int stub1 (int ) ;
 int timespec_add (int ,struct timespec) ;
 int timespec_now () ;
 scalar_t__ timespec_positive (struct timespec) ;
 struct timespec timespec_subtract (int ,int ) ;
 int unlock (int *) ;

__attribute__((used)) static void *timer_thread(void *param) {
    struct timer *timer = param;
    lock(&timer->lock);
    while (1) {
        struct timespec remaining = timespec_subtract(timer->end, timespec_now());
        while (timer->running && timespec_positive(remaining)) {
            unlock(&timer->lock);
            nanosleep(&remaining, ((void*)0));
            lock(&timer->lock);
            remaining = timespec_subtract(timer->end, timespec_now());
        }
        if (timer->running)
            timer->callback(timer->data);
        if (timespec_positive(timer->interval)) {
            timer->start = timer->end;
            timer->end = timespec_add(timer->start, timer->interval);
        } else {
            break;
        }
    }
    timer->running = 0;
    if (timer->dead)
        free(timer);
    else
        unlock(&timer->lock);
    return ((void*)0);
}
