
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int dummy; } ;


 unsigned int get_cpu () ;
 int put_cpu () ;
 int vfp_force_reload (unsigned int,struct thread_info*) ;

void vfp_flush_hwstate(struct thread_info *thread)
{
 unsigned int cpu = get_cpu();

 vfp_force_reload(cpu, thread);

 put_cpu();
}
