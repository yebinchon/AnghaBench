
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_readers_; int num_readers_lock_; int write_semaphore_; } ;
struct TYPE_5__ {TYPE_1__ state_; } ;
typedef TYPE_2__ uv_rwlock_t ;
typedef scalar_t__ DWORD ;


 int EnterCriticalSection (int *) ;
 int GetLastError () ;
 int INFINITE ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int ) ;
 int uv_fatal_error (int ,char*) ;

void uv_rwlock_rdlock(uv_rwlock_t* rwlock) {

  EnterCriticalSection(&rwlock->state_.num_readers_lock_);




  if (++rwlock->state_.num_readers_ == 1) {
    DWORD r = WaitForSingleObject(rwlock->state_.write_semaphore_, INFINITE);
    if (r != WAIT_OBJECT_0)
      uv_fatal_error(GetLastError(), "WaitForSingleObject");
  }


  LeaveCriticalSection(&rwlock->state_.num_readers_lock_);
}
