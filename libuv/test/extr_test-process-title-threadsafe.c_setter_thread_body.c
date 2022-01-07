
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int NUM_ITERATIONS ;
 int * titles ;
 scalar_t__ uv_set_process_title (int ) ;

__attribute__((used)) static void setter_thread_body(void* arg) {
  int i;

  for (i = 0; i < NUM_ITERATIONS; i++) {
    ASSERT(0 == uv_set_process_title(titles[0]));
    ASSERT(0 == uv_set_process_title(titles[1]));
    ASSERT(0 == uv_set_process_title(titles[2]));
    ASSERT(0 == uv_set_process_title(titles[3]));
  }
}
