
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pthread_condattr_t ;
struct TYPE_3__ {int cond; } ;
typedef TYPE_1__ cond_t ;


 int CLOCK_MONOTONIC ;
 int pthread_cond_init (int *,int *) ;
 int pthread_condattr_init (int *) ;
 int pthread_condattr_setclock (int *,int ) ;

void cond_init(cond_t *cond) {
    pthread_condattr_t attr;
    pthread_condattr_init(&attr);

    pthread_condattr_setclock(&attr, CLOCK_MONOTONIC);

    pthread_cond_init(&cond->cond, &attr);
}
