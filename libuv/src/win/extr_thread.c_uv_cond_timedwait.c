
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_mutex_t ;
struct TYPE_3__ {int cond_var; } ;
typedef TYPE_1__ uv_cond_t ;
typedef int uint64_t ;
typedef int DWORD ;


 scalar_t__ ERROR_TIMEOUT ;
 scalar_t__ GetLastError () ;
 scalar_t__ SleepConditionVariableCS (int *,int *,int ) ;
 int UV_ETIMEDOUT ;
 int abort () ;

int uv_cond_timedwait(uv_cond_t* cond, uv_mutex_t* mutex, uint64_t timeout) {
  if (SleepConditionVariableCS(&cond->cond_var, mutex, (DWORD)(timeout / 1e6)))
    return 0;
  if (GetLastError() != ERROR_TIMEOUT)
    abort();
  return UV_ETIMEDOUT;
}
