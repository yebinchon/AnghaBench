
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sc_data_t ;


 int sz_boot_index2size_tab (int const*) ;
 int sz_boot_pind2sz_tab (int const*) ;
 int sz_boot_size2index_tab (int const*) ;

void
sz_boot(const sc_data_t *sc_data) {
 sz_boot_pind2sz_tab(sc_data);
 sz_boot_index2size_tab(sc_data);
 sz_boot_size2index_tab(sc_data);
}
