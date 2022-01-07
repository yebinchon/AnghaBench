
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index; int lg_base; int lg_delta; int ndelta; int psz; int bin; int lg_delta_lookup; scalar_t__ pgs; } ;
typedef TYPE_1__ sc_t ;


 int ZU (int) ;
 int assert (int) ;
 int reg_size_compute (int,int,int) ;
 scalar_t__ slab_size (int,int,int,int) ;

__attribute__((used)) static void
size_class(

    sc_t *sc,

    int lg_max_lookup, int lg_page, int lg_ngroup,

    int index, int lg_base, int lg_delta, int ndelta) {
 sc->index = index;
 sc->lg_base = lg_base;
 sc->lg_delta = lg_delta;
 sc->ndelta = ndelta;
 sc->psz = (reg_size_compute(lg_base, lg_delta, ndelta)
     % (ZU(1) << lg_page) == 0);
 size_t size = (ZU(1) << lg_base) + (ZU(ndelta) << lg_delta);
 if (index == 0) {
  assert(!sc->psz);
 }
 if (size < (ZU(1) << (lg_page + lg_ngroup))) {
  sc->bin = 1;
  sc->pgs = slab_size(lg_page, lg_base, lg_delta, ndelta);
 } else {
  sc->bin = 0;
  sc->pgs = 0;
 }
 if (size <= (ZU(1) << lg_max_lookup)) {
  sc->lg_delta_lookup = lg_delta;
 } else {
  sc->lg_delta_lookup = 0;
 }
}
