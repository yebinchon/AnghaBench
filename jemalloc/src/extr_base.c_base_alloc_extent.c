
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int extent_t ;
typedef int base_t ;


 int CACHELINE ;
 int * base_alloc_impl (int *,int *,int,int ,size_t*) ;
 int extent_esn_set (int *,size_t) ;

extent_t *
base_alloc_extent(tsdn_t *tsdn, base_t *base) {
 size_t esn;
 extent_t *extent = base_alloc_impl(tsdn, base, sizeof(extent_t),
     CACHELINE, &esn);
 if (extent == ((void*)0)) {
  return ((void*)0);
 }
 extent_esn_set(extent, esn);
 return extent;
}
