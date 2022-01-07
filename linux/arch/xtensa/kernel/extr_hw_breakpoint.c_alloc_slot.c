
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int EBUSY ;

__attribute__((used)) static int alloc_slot(struct perf_event **slot, size_t n,
        struct perf_event *bp)
{
 size_t i;

 for (i = 0; i < n; ++i) {
  if (!slot[i]) {
   slot[i] = bp;
   return i;
  }
 }
 return -EBUSY;
}
