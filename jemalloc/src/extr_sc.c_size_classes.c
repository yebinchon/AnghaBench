
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ lg_delta_lookup; scalar_t__ bin; scalar_t__ psz; } ;
typedef TYPE_1__ sc_t ;
struct TYPE_6__ {int ntiny; int nlbins; int nbins; int nsizes; unsigned int lg_ceil_nsizes; int npsizes; int lg_tiny_maxclass; size_t lookup_maxclass; size_t small_maxclass; int lg_large_minclass; int large_minclass; size_t large_maxclass; TYPE_1__* sc; } ;
typedef TYPE_2__ sc_data_t ;


 size_t SC_LARGE_MAXCLASS ;
 int SC_LARGE_MINCLASS ;
 int SC_LG_LARGE_MINCLASS ;
 int SC_LG_TINY_MAXCLASS ;
 int SC_NPSIZES ;
 size_t SC_SMALL_MAXCLASS ;
 size_t SSIZE_MAX ;
 int ZU (int) ;
 int assert (int) ;
 unsigned int lg_ceil (int) ;
 int size_class (TYPE_1__*,int,int,int,int,int,int,int) ;

__attribute__((used)) static void
size_classes(

    sc_data_t *sc_data,

    size_t lg_ptr_size, int lg_quantum,

    int lg_tiny_min, int lg_max_lookup, int lg_page, int lg_ngroup) {
 int ptr_bits = (1 << lg_ptr_size) * 8;
 int ngroup = (1 << lg_ngroup);
 int ntiny = 0;
 int nlbins = 0;
 int lg_tiny_maxclass = (unsigned)-1;
 int nbins = 0;
 int npsizes = 0;

 int index = 0;

 int ndelta = 0;
 int lg_base = lg_tiny_min;
 int lg_delta = lg_base;


 size_t lookup_maxclass = 0;
 size_t small_maxclass = 0;
 int lg_large_minclass = 0;
 size_t large_maxclass = 0;


 while (lg_base < lg_quantum) {
  sc_t *sc = &sc_data->sc[index];
  size_class(sc, lg_max_lookup, lg_page, lg_ngroup, index,
      lg_base, lg_delta, ndelta);
  if (sc->lg_delta_lookup != 0) {
   nlbins = index + 1;
  }
  if (sc->psz) {
   npsizes++;
  }
  if (sc->bin) {
   nbins++;
  }
  ntiny++;

  lg_tiny_maxclass = lg_base;
  index++;
  lg_delta = lg_base;
  lg_base++;
 }


 if (ntiny != 0) {
  sc_t *sc = &sc_data->sc[index];




  lg_base--;
  ndelta = 1;
  size_class(sc, lg_max_lookup, lg_page, lg_ngroup, index,
      lg_base, lg_delta, ndelta);
  index++;
  lg_base++;
  lg_delta++;
  if (sc->psz) {
   npsizes++;
  }
  if (sc->bin) {
   nbins++;
  }
 }
 while (ndelta < ngroup) {
  sc_t *sc = &sc_data->sc[index];
  size_class(sc, lg_max_lookup, lg_page, lg_ngroup, index,
      lg_base, lg_delta, ndelta);
  index++;
  ndelta++;
  if (sc->psz) {
   npsizes++;
  }
  if (sc->bin) {
   nbins++;
  }
 }


 lg_base = lg_base + lg_ngroup;
 while (lg_base < ptr_bits - 1) {
  ndelta = 1;
  int ndelta_limit;
  if (lg_base == ptr_bits - 2) {
   ndelta_limit = ngroup - 1;
  } else {
   ndelta_limit = ngroup;
  }
  while (ndelta <= ndelta_limit) {
   sc_t *sc = &sc_data->sc[index];
   size_class(sc, lg_max_lookup, lg_page, lg_ngroup, index,
       lg_base, lg_delta, ndelta);
   if (sc->lg_delta_lookup != 0) {
    nlbins = index + 1;

    lookup_maxclass = (ZU(1) << lg_base)
        + (ZU(ndelta) << lg_delta);
   }
   if (sc->psz) {
    npsizes++;
   }
   if (sc->bin) {
    nbins++;

    small_maxclass = (ZU(1) << lg_base)
        + (ZU(ndelta) << lg_delta);
    if (lg_ngroup > 0) {
     lg_large_minclass = lg_base + 1;
    } else {
     lg_large_minclass = lg_base + 2;
    }
   }
   large_maxclass = (ZU(1) << lg_base)
       + (ZU(ndelta) << lg_delta);
   index++;
   ndelta++;
  }
  lg_base++;
  lg_delta++;
 }

 int nsizes = index;
 unsigned lg_ceil_nsizes = lg_ceil(nsizes);


 sc_data->ntiny = ntiny;
 sc_data->nlbins = nlbins;
 sc_data->nbins = nbins;
 sc_data->nsizes = nsizes;
 sc_data->lg_ceil_nsizes = lg_ceil_nsizes;
 sc_data->npsizes = npsizes;
 sc_data->lg_tiny_maxclass = lg_tiny_maxclass;
 sc_data->lookup_maxclass = lookup_maxclass;
 sc_data->small_maxclass = small_maxclass;
 sc_data->lg_large_minclass = lg_large_minclass;
 sc_data->large_minclass = (ZU(1) << lg_large_minclass);
 sc_data->large_maxclass = large_maxclass;
 assert(sc_data->npsizes == SC_NPSIZES);
 assert(sc_data->lg_tiny_maxclass == SC_LG_TINY_MAXCLASS);
 assert(sc_data->small_maxclass == SC_SMALL_MAXCLASS);
 assert(sc_data->large_minclass == SC_LARGE_MINCLASS);
 assert(sc_data->lg_large_minclass == SC_LG_LARGE_MINCLASS);
 assert(sc_data->large_maxclass == SC_LARGE_MAXCLASS);
 assert(SC_LARGE_MAXCLASS < SSIZE_MAX);
}
