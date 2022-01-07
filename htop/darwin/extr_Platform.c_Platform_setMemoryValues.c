
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* vm_statistics_t ;
struct TYPE_6__ {int max_mem; } ;
struct TYPE_7__ {scalar_t__ inactive_count; scalar_t__ purgeable_count; scalar_t__ wire_count; scalar_t__ active_count; } ;
struct TYPE_9__ {TYPE_1__ host_info; TYPE_2__ vm_stats; } ;
struct TYPE_8__ {int total; double* values; scalar_t__ pl; } ;
typedef TYPE_3__ Meter ;
typedef TYPE_4__ DarwinProcessList ;


 scalar_t__ vm_page_size ;

void Platform_setMemoryValues(Meter* mtr) {
   DarwinProcessList *dpl = (DarwinProcessList *)mtr->pl;
   vm_statistics_t vm = &dpl->vm_stats;
   double page_K = (double)vm_page_size / (double)1024;

   mtr->total = dpl->host_info.max_mem / 1024;
   mtr->values[0] = (double)(vm->active_count + vm->wire_count) * page_K;
   mtr->values[1] = (double)vm->purgeable_count * page_K;
   mtr->values[2] = (double)vm->inactive_count * page_K;
}
