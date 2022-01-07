
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_work_t ;


 int * pause_reqs ;
 int pause_sems ;
 int uv_sem_wait (int) ;

__attribute__((used)) static void work_cb(uv_work_t* req) {
  uv_sem_wait(pause_sems + (req - pause_reqs));
}
