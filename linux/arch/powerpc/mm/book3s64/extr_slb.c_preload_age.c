
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int slb_preload_tail; int slb_preload_nr; } ;


 int SLB_PRELOAD_NR ;

__attribute__((used)) static void preload_age(struct thread_info *ti)
{
 if (!ti->slb_preload_nr)
  return;
 ti->slb_preload_nr--;
 ti->slb_preload_tail = (ti->slb_preload_tail + 1) % SLB_PRELOAD_NR;
}
