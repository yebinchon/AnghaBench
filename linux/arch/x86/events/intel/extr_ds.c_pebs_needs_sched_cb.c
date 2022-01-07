
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_hw_events {scalar_t__ n_pebs; scalar_t__ n_pebs_via_pt; scalar_t__ n_large_pebs; } ;



__attribute__((used)) static inline bool pebs_needs_sched_cb(struct cpu_hw_events *cpuc)
{
 if (cpuc->n_pebs == cpuc->n_pebs_via_pt)
  return 0;

 return cpuc->n_pebs && (cpuc->n_pebs == cpuc->n_large_pebs);
}
