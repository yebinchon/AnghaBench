
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int run_in_parallel (int,int,int ,int *,int *) ;
 int set_error ;

void test_threads_basic__set_error(void)
{
 run_in_parallel(1, 4, set_error, ((void*)0), ((void*)0));
}
