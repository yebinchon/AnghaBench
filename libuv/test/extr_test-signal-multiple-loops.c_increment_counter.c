
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int counter_lock ;
 int uv_mutex_lock (int *) ;
 int uv_mutex_unlock (int *) ;

__attribute__((used)) static void increment_counter(volatile int* counter) {
  uv_mutex_lock(&counter_lock);
  ++(*counter);
  uv_mutex_unlock(&counter_lock);
}
