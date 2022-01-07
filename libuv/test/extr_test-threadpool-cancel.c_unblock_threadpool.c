
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ARRAY_SIZE (int ) ;
 int pause_reqs ;
 scalar_t__ pause_sems ;
 int uv_sem_post (scalar_t__) ;

__attribute__((used)) static void unblock_threadpool(void) {
  size_t i;

  for (i = 0; i < ARRAY_SIZE(pause_reqs); i += 1)
    uv_sem_post(pause_sems + i);
}
