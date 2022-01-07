
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union vfp_state {int dummy; } vfp_state ;
struct thread_info {union vfp_state vfpstate; } ;


 unsigned int get_cpu () ;
 int put_cpu () ;
 union vfp_state** vfp_current_hw_state ;

__attribute__((used)) static void vfp_thread_exit(struct thread_info *thread)
{

 union vfp_state *vfp = &thread->vfpstate;
 unsigned int cpu = get_cpu();

 if (vfp_current_hw_state[cpu] == vfp)
  vfp_current_hw_state[cpu] = ((void*)0);
 put_cpu();
}
