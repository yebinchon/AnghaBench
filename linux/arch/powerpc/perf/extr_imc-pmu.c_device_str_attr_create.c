
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct attribute {char const* name; int mode; } ;
struct TYPE_2__ {struct attribute attr; int show; } ;
struct perf_pmu_events_attr {char const* event_str; TYPE_1__ attr; } ;


 int GFP_KERNEL ;
 struct perf_pmu_events_attr* kzalloc (int,int ) ;
 int perf_event_sysfs_show ;
 int sysfs_attr_init (struct attribute*) ;

__attribute__((used)) static struct attribute *device_str_attr_create(const char *name, const char *str)
{
 struct perf_pmu_events_attr *attr;

 attr = kzalloc(sizeof(*attr), GFP_KERNEL);
 if (!attr)
  return ((void*)0);
 sysfs_attr_init(&attr->attr.attr);

 attr->event_str = str;
 attr->attr.attr.name = name;
 attr->attr.attr.mode = 0444;
 attr->attr.show = perf_event_sysfs_show;

 return &attr->attr.attr;
}
