
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ndelta; int lg_delta; int lg_base; int bin; } ;
typedef TYPE_1__ sc_t ;
struct TYPE_6__ {int nsizes; TYPE_1__* sc; int initialized; } ;
typedef TYPE_2__ sc_data_t ;


 int assert (int ) ;
 size_t reg_size_compute (int ,int ,int ) ;
 int sc_data_update_sc_slab_size (TYPE_1__*,size_t,int) ;

void
sc_data_update_slab_size(sc_data_t *data, size_t begin, size_t end, int pgs) {
 assert(data->initialized);
 for (int i = 0; i < data->nsizes; i++) {
  sc_t *sc = &data->sc[i];
  if (!sc->bin) {
   break;
  }
  size_t reg_size = reg_size_compute(sc->lg_base, sc->lg_delta,
      sc->ndelta);
  if (begin <= reg_size && reg_size <= end) {
   sc_data_update_sc_slab_size(sc, reg_size, pgs);
  }
 }
}
