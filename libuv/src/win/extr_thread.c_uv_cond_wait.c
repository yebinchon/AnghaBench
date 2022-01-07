
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_mutex_t ;
struct TYPE_3__ {int cond_var; } ;
typedef TYPE_1__ uv_cond_t ;


 int INFINITE ;
 int SleepConditionVariableCS (int *,int *,int ) ;
 int abort () ;

void uv_cond_wait(uv_cond_t* cond, uv_mutex_t* mutex) {
  if (!SleepConditionVariableCS(&cond->cond_var, mutex, INFINITE))
    abort();
}
