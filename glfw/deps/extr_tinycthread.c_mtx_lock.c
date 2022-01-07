
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mAlreadyLocked; int mRecursive; int mHandle; } ;
typedef TYPE_1__ mtx_t ;


 int EnterCriticalSection (int *) ;
 int Sleep (int) ;
 scalar_t__ TRUE ;
 scalar_t__ pthread_mutex_lock (TYPE_1__*) ;
 int thrd_error ;
 int thrd_success ;

int mtx_lock(mtx_t *mtx)
{
  return pthread_mutex_lock(mtx) == 0 ? thrd_success : thrd_error;

}
