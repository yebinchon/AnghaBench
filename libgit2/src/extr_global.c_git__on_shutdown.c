
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_global_shutdown_fn ;


 scalar_t__ ARRAY_SIZE (int *) ;
 int assert (int) ;
 int git__n_shutdown_callbacks ;
 int * git__shutdown_callbacks ;
 int git_atomic_inc (int *) ;

void git__on_shutdown(git_global_shutdown_fn callback)
{
 int count = git_atomic_inc(&git__n_shutdown_callbacks);
 assert(count <= (int) ARRAY_SIZE(git__shutdown_callbacks) && count > 0);
 git__shutdown_callbacks[count - 1] = callback;
}
