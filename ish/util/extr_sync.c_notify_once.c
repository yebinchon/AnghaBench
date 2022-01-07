
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cond; } ;
typedef TYPE_1__ cond_t ;


 int pthread_cond_signal (int *) ;

void notify_once(cond_t *cond) {
    pthread_cond_signal(&cond->cond);
}
