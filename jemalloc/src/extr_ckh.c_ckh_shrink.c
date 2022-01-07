
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsd_t ;
typedef int ckhc_t ;
struct TYPE_4__ {unsigned int lg_curbuckets; int nshrinkfails; int * tab; int nshrinks; } ;
typedef TYPE_1__ ckh_t ;


 int CACHELINE ;
 int LG_CKH_BUCKET_CELLS ;
 size_t SC_LARGE_MAXCLASS ;
 int arena_ichoose (int *,int *) ;
 int ckh_rebuild (TYPE_1__*,int *) ;
 int idalloctm (int ,int *,int *,int *,int,int) ;
 scalar_t__ ipallocztm (int ,size_t,int ,int,int *,int,int ) ;
 size_t sz_sa2u (int,int ) ;
 int tsd_tsdn (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
ckh_shrink(tsd_t *tsd, ckh_t *ckh) {
 ckhc_t *tab, *ttab;
 size_t usize;
 unsigned lg_prevbuckets, lg_curcells;





 lg_prevbuckets = ckh->lg_curbuckets;
 lg_curcells = ckh->lg_curbuckets + LG_CKH_BUCKET_CELLS - 1;
 usize = sz_sa2u(sizeof(ckhc_t) << lg_curcells, CACHELINE);
 if (unlikely(usize == 0 || usize > SC_LARGE_MAXCLASS)) {
  return;
 }
 tab = (ckhc_t *)ipallocztm(tsd_tsdn(tsd), usize, CACHELINE, 1, ((void*)0),
     1, arena_ichoose(tsd, ((void*)0)));
 if (tab == ((void*)0)) {




  return;
 }

 ttab = ckh->tab;
 ckh->tab = tab;
 tab = ttab;
 ckh->lg_curbuckets = lg_curcells - LG_CKH_BUCKET_CELLS;

 if (!ckh_rebuild(ckh, tab)) {
  idalloctm(tsd_tsdn(tsd), tab, ((void*)0), ((void*)0), 1, 1);



  return;
 }


 idalloctm(tsd_tsdn(tsd), ckh->tab, ((void*)0), ((void*)0), 1, 1);
 ckh->tab = tab;
 ckh->lg_curbuckets = lg_prevbuckets;



}
