
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int ctl_named_node_t ;


 size_t SC_NBINS ;
 size_t SC_NSIZES ;
 int const* super_arenas_lextent_i_node ;

__attribute__((used)) static const ctl_named_node_t *
arenas_lextent_i_index(tsdn_t *tsdn, const size_t *mib,
    size_t miblen, size_t i) {
 if (i > SC_NSIZES - SC_NBINS) {
  return ((void*)0);
 }
 return super_arenas_lextent_i_node;
}
