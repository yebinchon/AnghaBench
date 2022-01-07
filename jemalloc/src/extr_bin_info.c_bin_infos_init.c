
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {size_t lg_base; size_t lg_delta; int pgs; scalar_t__ ndelta; } ;
typedef TYPE_1__ sc_t ;
struct TYPE_7__ {TYPE_1__* sc; } ;
typedef TYPE_2__ sc_data_t ;
typedef int bitmap_info_t ;
struct TYPE_8__ {size_t reg_size; int slab_size; unsigned int n_shards; int bitmap_info; scalar_t__ nregs; } ;
typedef TYPE_3__ bin_info_t ;


 int BITMAP_INFO_INITIALIZER (scalar_t__) ;
 int LG_PAGE ;
 unsigned int SC_NBINS ;

__attribute__((used)) static void
bin_infos_init(sc_data_t *sc_data, unsigned bin_shard_sizes[SC_NBINS],
    bin_info_t bin_infos[SC_NBINS]) {
 for (unsigned i = 0; i < SC_NBINS; i++) {
  bin_info_t *bin_info = &bin_infos[i];
  sc_t *sc = &sc_data->sc[i];
  bin_info->reg_size = ((size_t)1U << sc->lg_base)
      + ((size_t)sc->ndelta << sc->lg_delta);
  bin_info->slab_size = (sc->pgs << LG_PAGE);
  bin_info->nregs =
      (uint32_t)(bin_info->slab_size / bin_info->reg_size);
  bin_info->n_shards = bin_shard_sizes[i];
  bitmap_info_t bitmap_info = BITMAP_INFO_INITIALIZER(
      bin_info->nregs);
  bin_info->bitmap_info = bitmap_info;
 }
}
