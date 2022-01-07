
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t stack_size; } ;
typedef TYPE_1__ uv_thread_options_t ;
struct rlimit {int rlim_cur; } ;
typedef int pthread_attr_t ;


 int ASSERT (int) ;
 int RLIMIT_STACK ;
 int RLIM_INFINITY ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;
 scalar_t__ pthread_attr_getstacksize (int *,size_t*) ;
 size_t pthread_get_stacksize_np (int ) ;
 scalar_t__ pthread_getattr_np (int ,int *) ;
 int pthread_self () ;

__attribute__((used)) static void thread_check_stack(void* arg) {
}
