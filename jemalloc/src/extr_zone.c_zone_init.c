
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* zone_name; int version; int pressure_relief; int free_definite_size; int memalign; TYPE_1__* introspect; int batch_free; int batch_malloc; int destroy; int realloc; int free; int valloc; int calloc; int malloc; int size; } ;
struct TYPE_3__ {int reinit_lock; int * enumerate_unavailable_without_blocks; int * enumerate_discharged_pointers; int * discharge; int * disable_discharge_checking; int * enable_discharge_checking; int zone_locked; int statistics; int force_unlock; int force_lock; int log; int print; int check; int good_size; int enumerator; } ;


 TYPE_2__ jemalloc_zone ;
 TYPE_1__ jemalloc_zone_introspect ;
 int zone_batch_free ;
 int zone_batch_malloc ;
 int zone_calloc ;
 int zone_check ;
 int zone_destroy ;
 int zone_enumerator ;
 int zone_force_lock ;
 int zone_force_unlock ;
 int zone_free ;
 int zone_free_definite_size ;
 int zone_good_size ;
 int zone_locked ;
 int zone_log ;
 int zone_malloc ;
 int zone_memalign ;
 int zone_pressure_relief ;
 int zone_print ;
 int zone_realloc ;
 int zone_reinit_lock ;
 int zone_size ;
 int zone_statistics ;
 int zone_valloc ;

__attribute__((used)) static void
zone_init(void) {
 jemalloc_zone.size = zone_size;
 jemalloc_zone.malloc = zone_malloc;
 jemalloc_zone.calloc = zone_calloc;
 jemalloc_zone.valloc = zone_valloc;
 jemalloc_zone.free = zone_free;
 jemalloc_zone.realloc = zone_realloc;
 jemalloc_zone.destroy = zone_destroy;
 jemalloc_zone.zone_name = "jemalloc_zone";
 jemalloc_zone.batch_malloc = zone_batch_malloc;
 jemalloc_zone.batch_free = zone_batch_free;
 jemalloc_zone.introspect = &jemalloc_zone_introspect;
 jemalloc_zone.version = 9;
 jemalloc_zone.memalign = zone_memalign;
 jemalloc_zone.free_definite_size = zone_free_definite_size;
 jemalloc_zone.pressure_relief = zone_pressure_relief;

 jemalloc_zone_introspect.enumerator = zone_enumerator;
 jemalloc_zone_introspect.good_size = zone_good_size;
 jemalloc_zone_introspect.check = zone_check;
 jemalloc_zone_introspect.print = zone_print;
 jemalloc_zone_introspect.log = zone_log;
 jemalloc_zone_introspect.force_lock = zone_force_lock;
 jemalloc_zone_introspect.force_unlock = zone_force_unlock;
 jemalloc_zone_introspect.statistics = zone_statistics;
 jemalloc_zone_introspect.zone_locked = zone_locked;
 jemalloc_zone_introspect.enable_discharge_checking = ((void*)0);
 jemalloc_zone_introspect.disable_discharge_checking = ((void*)0);
 jemalloc_zone_introspect.discharge = ((void*)0);



 jemalloc_zone_introspect.enumerate_unavailable_without_blocks = ((void*)0);

 jemalloc_zone_introspect.reinit_lock = zone_reinit_lock;
}
