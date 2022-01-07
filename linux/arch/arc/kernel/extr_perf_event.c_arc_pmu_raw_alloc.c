
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {void* raw_entry; scalar_t__ n_events; void* attrs; void* attr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __GFP_ZERO ;
 TYPE_1__* arc_pmu ;
 void* devm_kmalloc_array (struct device*,scalar_t__,int,int) ;

__attribute__((used)) static int arc_pmu_raw_alloc(struct device *dev)
{
 arc_pmu->attr = devm_kmalloc_array(dev, arc_pmu->n_events + 1,
  sizeof(*arc_pmu->attr), GFP_KERNEL | __GFP_ZERO);
 if (!arc_pmu->attr)
  return -ENOMEM;

 arc_pmu->attrs = devm_kmalloc_array(dev, arc_pmu->n_events + 1,
  sizeof(*arc_pmu->attrs), GFP_KERNEL | __GFP_ZERO);
 if (!arc_pmu->attrs)
  return -ENOMEM;

 arc_pmu->raw_entry = devm_kmalloc_array(dev, arc_pmu->n_events,
  sizeof(*arc_pmu->raw_entry), GFP_KERNEL | __GFP_ZERO);
 if (!arc_pmu->raw_entry)
  return -ENOMEM;

 return 0;
}
