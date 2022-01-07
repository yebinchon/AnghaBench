
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* attr; TYPE_2__** attrs; TYPE_1__* raw_entry; } ;
struct TYPE_7__ {int mode; int name; } ;
struct TYPE_8__ {TYPE_2__ attr; int show; } ;
struct TYPE_9__ {int id; TYPE_3__ attr; } ;
struct TYPE_6__ {int name; } ;


 scalar_t__ ARCPMU_EVENT_NAME_LEN ;
 int VERIFY_OCTAL_PERMISSIONS (int) ;
 TYPE_5__* arc_pmu ;
 int arc_pmu_events_sysfs_show ;
 int memmove (int ,char*,scalar_t__) ;

__attribute__((used)) static void arc_pmu_add_raw_event_attr(int j, char *str)
{
 memmove(arc_pmu->raw_entry[j].name, str, ARCPMU_EVENT_NAME_LEN - 1);
 arc_pmu->attr[j].attr.attr.name = arc_pmu->raw_entry[j].name;
 arc_pmu->attr[j].attr.attr.mode = VERIFY_OCTAL_PERMISSIONS(0444);
 arc_pmu->attr[j].attr.show = arc_pmu_events_sysfs_show;
 arc_pmu->attr[j].id = j;
 arc_pmu->attrs[j] = &(arc_pmu->attr[j].attr.attr);
}
