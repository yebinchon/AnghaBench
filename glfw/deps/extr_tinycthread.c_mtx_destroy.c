
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mHandle; } ;
typedef TYPE_1__ mtx_t ;


 int DeleteCriticalSection (int *) ;
 int pthread_mutex_destroy (TYPE_1__*) ;

void mtx_destroy(mtx_t *mtx)
{



  pthread_mutex_destroy(mtx);

}
