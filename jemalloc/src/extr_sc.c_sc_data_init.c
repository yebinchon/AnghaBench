
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int initialized; } ;
typedef TYPE_1__ sc_data_t ;


 int LG_PAGE ;
 int LG_QUANTUM ;
 int LG_SIZEOF_PTR ;
 int SC_LG_TINY_MIN ;
 int assert (int) ;
 int size_classes (TYPE_1__*,int ,int ,int ,int,int ,int) ;

void
sc_data_init(sc_data_t *sc_data) {
 assert(!sc_data->initialized);

 int lg_max_lookup = 12;

 size_classes(sc_data, LG_SIZEOF_PTR, LG_QUANTUM, SC_LG_TINY_MIN,
     lg_max_lookup, LG_PAGE, 2);

 sc_data->initialized = 1;
}
