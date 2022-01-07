
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int write_semaphore_; } ;
struct TYPE_5__ {TYPE_1__ state_; } ;
typedef TYPE_2__ uv_rwlock_t ;


 int GetLastError () ;
 int ReleaseSemaphore (int ,int,int *) ;
 int uv_fatal_error (int ,char*) ;

void uv_rwlock_wrunlock(uv_rwlock_t* rwlock) {
  if (!ReleaseSemaphore(rwlock->state_.write_semaphore_, 1, ((void*)0)))
    uv_fatal_error(GetLastError(), "ReleaseSemaphore");
}
