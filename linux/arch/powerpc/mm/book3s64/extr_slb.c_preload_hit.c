
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {unsigned char slb_preload_nr; unsigned char slb_preload_tail; unsigned long* slb_preload_esid; } ;


 unsigned char SLB_PRELOAD_NR ;

__attribute__((used)) static bool preload_hit(struct thread_info *ti, unsigned long esid)
{
 unsigned char i;

 for (i = 0; i < ti->slb_preload_nr; i++) {
  unsigned char idx;

  idx = (ti->slb_preload_tail + i) % SLB_PRELOAD_NR;
  if (esid == ti->slb_preload_esid[idx])
   return 1;
 }
 return 0;
}
