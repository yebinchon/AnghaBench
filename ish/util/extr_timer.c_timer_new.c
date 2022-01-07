
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timer_callback_t ;
struct timer {int running; int dead; int lock; void* data; int callback; } ;


 int lock_init (int *) ;
 struct timer* malloc (int) ;

struct timer *timer_new(timer_callback_t callback, void *data) {
    struct timer *timer = malloc(sizeof(struct timer));
    timer->callback = callback;
    timer->data = data;
    timer->running = 0;
    timer->dead = 0;
    lock_init(&timer->lock);
    return timer;
}
