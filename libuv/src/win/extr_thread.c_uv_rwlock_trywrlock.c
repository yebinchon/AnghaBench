
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int write_semaphore_; } ;
struct TYPE_5__ {TYPE_1__ state_; } ;
typedef TYPE_2__ uv_rwlock_t ;
typedef scalar_t__ DWORD ;


 int GetLastError () ;
 int UV_EBUSY ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WAIT_TIMEOUT ;
 scalar_t__ WaitForSingleObject (int ,int ) ;
 int uv_fatal_error (int ,char*) ;

int uv_rwlock_trywrlock(uv_rwlock_t* rwlock) {
  DWORD r = WaitForSingleObject(rwlock->state_.write_semaphore_, 0);
  if (r == WAIT_OBJECT_0)
    return 0;
  else if (r == WAIT_TIMEOUT)
    return UV_EBUSY;
  else
    uv_fatal_error(GetLastError(), "WaitForSingleObject");
}
