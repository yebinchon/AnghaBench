
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int t0; } ;
typedef TYPE_1__ timedelta_t ;


 int nstime_init (int *,int ) ;
 int nstime_update (int *) ;

void
timer_start(timedelta_t *timer) {
 nstime_init(&timer->t0, 0);
 nstime_update(&timer->t0);
}
