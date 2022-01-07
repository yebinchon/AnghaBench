
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ num_readers_; int num_readers_lock_; int * write_semaphore_; } ;
struct TYPE_5__ {TYPE_1__ state_; } ;
typedef TYPE_2__ uv_rwlock_t ;
typedef int * HANDLE ;


 int * CreateSemaphoreW (int *,int,int,int *) ;
 int GetLastError () ;
 int InitializeCriticalSection (int *) ;
 int uv_translate_sys_error (int ) ;

int uv_rwlock_init(uv_rwlock_t* rwlock) {

  HANDLE handle = CreateSemaphoreW(((void*)0), 1, 1, ((void*)0));
  if (handle == ((void*)0))
    return uv_translate_sys_error(GetLastError());
  rwlock->state_.write_semaphore_ = handle;


  InitializeCriticalSection(&rwlock->state_.num_readers_lock_);


  rwlock->state_.num_readers_ = 0;

  return 0;
}
