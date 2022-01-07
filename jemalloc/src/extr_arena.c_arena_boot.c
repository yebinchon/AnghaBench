
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int lg_base; unsigned int ndelta; unsigned int lg_delta; } ;
typedef TYPE_1__ sc_t ;
struct TYPE_5__ {TYPE_1__* sc; } ;
typedef TYPE_2__ sc_data_t ;


 unsigned int SC_NBINS ;
 int * arena_binind_div_info ;
 int arena_dirty_decay_ms_default_set (int ) ;
 int arena_muzzy_decay_ms_default_set (int ) ;
 int div_init (int *,unsigned int) ;
 int opt_dirty_decay_ms ;
 int opt_muzzy_decay_ms ;

void
arena_boot(sc_data_t *sc_data) {
 arena_dirty_decay_ms_default_set(opt_dirty_decay_ms);
 arena_muzzy_decay_ms_default_set(opt_muzzy_decay_ms);
 for (unsigned i = 0; i < SC_NBINS; i++) {
  sc_t *sc = &sc_data->sc[i];
  div_init(&arena_binind_div_info[i],
      (1U << sc->lg_base) + (sc->ndelta << sc->lg_delta));
 }
}
