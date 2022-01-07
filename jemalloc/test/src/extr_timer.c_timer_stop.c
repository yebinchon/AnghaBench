
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int t1; int t0; } ;
typedef TYPE_1__ timedelta_t ;


 int nstime_copy (int *,int *) ;
 int nstime_update (int *) ;

void
timer_stop(timedelta_t *timer) {
 nstime_copy(&timer->t1, &timer->t0);
 nstime_update(&timer->t1);
}
