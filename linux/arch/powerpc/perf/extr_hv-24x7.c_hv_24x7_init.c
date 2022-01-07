
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct hv_perf_caps {int dummy; } ;
struct TYPE_11__ {int oprofile_cpu_type; } ;
struct TYPE_10__ {int attrs; } ;
struct TYPE_9__ {int attrs; } ;
struct TYPE_8__ {int attrs; } ;
struct TYPE_7__ {int name; int capabilities; } ;


 int ENODEV ;
 int ENOMEM ;
 int FW_FEATURE_LPAR ;
 int PERF_PMU_CAP_NO_INTERRUPT ;
 int aggregate_result_elements ;
 int create_events_from_catalog (int *,int *,int *) ;
 TYPE_6__* cur_cpu_spec ;
 TYPE_5__ event_desc_group ;
 TYPE_4__ event_group ;
 TYPE_3__ event_long_desc_group ;
 int firmware_has_feature (int ) ;
 TYPE_1__ h_24x7_pmu ;
 int hv_page_cache ;
 unsigned long hv_perf_caps_get (struct hv_perf_caps*) ;
 int interface_version ;
 int kmem_cache_create (char*,int,int,int ,int *) ;
 int perf_pmu_register (TYPE_1__*,int ,int) ;
 int pr_debug (char*,...) ;
 int strcmp (int ,char*) ;
 int threads_per_core ;

__attribute__((used)) static int hv_24x7_init(void)
{
 int r;
 unsigned long hret;
 struct hv_perf_caps caps;

 if (!firmware_has_feature(FW_FEATURE_LPAR)) {
  pr_debug("not a virtualized system, not enabling\n");
  return -ENODEV;
 } else if (!cur_cpu_spec->oprofile_cpu_type)
  return -ENODEV;


 if (!strcmp(cur_cpu_spec->oprofile_cpu_type, "ppc64/power8"))
  interface_version = 1;
 else {
  interface_version = 2;


  if (threads_per_core == 8)
   aggregate_result_elements = 1;
 }

 hret = hv_perf_caps_get(&caps);
 if (hret) {
  pr_debug("could not obtain capabilities, not enabling, rc=%ld\n",
    hret);
  return -ENODEV;
 }

 hv_page_cache = kmem_cache_create("hv-page-4096", 4096, 4096, 0, ((void*)0));
 if (!hv_page_cache)
  return -ENOMEM;


 h_24x7_pmu.capabilities |= PERF_PMU_CAP_NO_INTERRUPT;

 r = create_events_from_catalog(&event_group.attrs,
       &event_desc_group.attrs,
       &event_long_desc_group.attrs);

 if (r)
  return r;

 r = perf_pmu_register(&h_24x7_pmu, h_24x7_pmu.name, -1);
 if (r)
  return r;

 return 0;
}
