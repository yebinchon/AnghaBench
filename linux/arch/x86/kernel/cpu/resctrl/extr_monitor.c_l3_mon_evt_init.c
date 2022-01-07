
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rdt_resource {int evt_list; } ;
struct TYPE_6__ {int list; } ;
struct TYPE_5__ {int list; } ;
struct TYPE_4__ {int list; } ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ is_llc_occupancy_enabled () ;
 scalar_t__ is_mbm_local_enabled () ;
 scalar_t__ is_mbm_total_enabled () ;
 int list_add_tail (int *,int *) ;
 TYPE_3__ llc_occupancy_event ;
 TYPE_2__ mbm_local_event ;
 TYPE_1__ mbm_total_event ;

__attribute__((used)) static void l3_mon_evt_init(struct rdt_resource *r)
{
 INIT_LIST_HEAD(&r->evt_list);

 if (is_llc_occupancy_enabled())
  list_add_tail(&llc_occupancy_event.list, &r->evt_list);
 if (is_mbm_total_enabled())
  list_add_tail(&mbm_total_event.list, &r->evt_list);
 if (is_mbm_local_enabled())
  list_add_tail(&mbm_local_event.list, &r->evt_list);
}
