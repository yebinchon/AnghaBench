
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_thread_t ;


 int blocker ;
 int numlock ;
 int reader ;
 scalar_t__ shared_num ;
 int uv_barrier_destroy (int *) ;
 int uv_barrier_init (int *,int) ;
 int uv_barrier_wait (int *) ;
 int uv_rwlock_destroy (int *) ;
 int uv_rwlock_init (int *) ;
 int uv_thread_create (int *,int ,int*) ;
 int writer ;

int main()
{
    uv_barrier_init(&blocker, 4);

    shared_num = 0;
    uv_rwlock_init(&numlock);

    uv_thread_t threads[3];

    int thread_nums[] = {1, 2, 1};
    uv_thread_create(&threads[0], reader, &thread_nums[0]);
    uv_thread_create(&threads[1], reader, &thread_nums[1]);

    uv_thread_create(&threads[2], writer, &thread_nums[2]);

    uv_barrier_wait(&blocker);
    uv_barrier_destroy(&blocker);

    uv_rwlock_destroy(&numlock);
    return 0;
}
