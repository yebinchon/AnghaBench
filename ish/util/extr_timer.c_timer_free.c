
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer {int running; int dead; int lock; int thread; } ;


 int SIGUSR1 ;
 int free (struct timer*) ;
 int lock (int *) ;
 int pthread_kill (int ,int ) ;
 int unlock (int *) ;

void timer_free(struct timer *timer) {
    lock(&timer->lock);
    if (timer->running) {
        timer->running = 0;
        timer->dead = 1;
        pthread_kill(timer->thread, SIGUSR1);
        unlock(&timer->lock);
    } else {
        unlock(&timer->lock);
        if (!timer->dead)
            free(timer);
    }
}
