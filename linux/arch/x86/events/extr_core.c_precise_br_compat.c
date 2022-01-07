
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int branch_sample_type; int exclude_kernel; int exclude_user; } ;
struct perf_event {TYPE_1__ attr; } ;


 int PERF_SAMPLE_BRANCH_ANY ;
 int PERF_SAMPLE_BRANCH_KERNEL ;
 int PERF_SAMPLE_BRANCH_USER ;

__attribute__((used)) static inline int precise_br_compat(struct perf_event *event)
{
 u64 m = event->attr.branch_sample_type;
 u64 b = 0;


 if (!(m & PERF_SAMPLE_BRANCH_ANY))
  return 0;

 m &= PERF_SAMPLE_BRANCH_KERNEL | PERF_SAMPLE_BRANCH_USER;

 if (!event->attr.exclude_user)
  b |= PERF_SAMPLE_BRANCH_USER;

 if (!event->attr.exclude_kernel)
  b |= PERF_SAMPLE_BRANCH_KERNEL;





 return m == b;
}
