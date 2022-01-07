
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; int mutex; } ;


 scalar_t__ SPN_RUN ;
 TYPE_1__* parsing_spinner ;
 int pthread_mutex_lock (int *) ;

__attribute__((used)) static void
lock_spinner (void)
{
  if (parsing_spinner != ((void*)0) && parsing_spinner->state == SPN_RUN)
    pthread_mutex_lock (&parsing_spinner->mutex);
}
