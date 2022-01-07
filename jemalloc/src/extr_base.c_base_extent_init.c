
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int extent_t ;


 int extent_binit (int *,void*,size_t,size_t) ;

__attribute__((used)) static void
base_extent_init(size_t *extent_sn_next, extent_t *extent, void *addr,
    size_t size) {
 size_t sn;

 sn = *extent_sn_next;
 (*extent_sn_next)++;

 extent_binit(extent, addr, size, sn);
}
