
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int thread_called ;

__attribute__((used)) static void thread_entry(void* arg) {
  ASSERT(arg == (void *) 42);
  thread_called++;
}
