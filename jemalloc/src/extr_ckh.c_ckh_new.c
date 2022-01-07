
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsd_t ;
typedef int ckhc_t ;
struct TYPE_3__ {int prng_state; unsigned int lg_minbuckets; unsigned int lg_curbuckets; int * tab; int * keycomp; int * hash; scalar_t__ count; scalar_t__ nrelocs; scalar_t__ ninserts; scalar_t__ nshrinkfails; scalar_t__ nshrinks; scalar_t__ ngrows; } ;
typedef TYPE_1__ ckh_t ;
typedef int ckh_keycomp_t ;
typedef int ckh_hash_t ;


 int CACHELINE ;
 unsigned int LG_CKH_BUCKET_CELLS ;
 size_t SC_LARGE_MAXCLASS ;
 unsigned int ZU (int) ;
 int arena_ichoose (int *,int *) ;
 int assert (int) ;
 scalar_t__ ipallocztm (int ,size_t,int ,int,int *,int,int ) ;
 size_t sz_sa2u (int,int ) ;
 int tsd_tsdn (int *) ;
 scalar_t__ unlikely (int) ;

bool
ckh_new(tsd_t *tsd, ckh_t *ckh, size_t minitems, ckh_hash_t *hash,
    ckh_keycomp_t *keycomp) {
 bool ret;
 size_t mincells, usize;
 unsigned lg_mincells;

 assert(minitems > 0);
 assert(hash != ((void*)0));
 assert(keycomp != ((void*)0));
 ckh->prng_state = 42;
 ckh->count = 0;
 assert(LG_CKH_BUCKET_CELLS > 0);
 mincells = ((minitems + (3 - (minitems % 3))) / 3) << 2;
 for (lg_mincells = LG_CKH_BUCKET_CELLS;
     (ZU(1) << lg_mincells) < mincells;
     lg_mincells++) {

 }
 ckh->lg_minbuckets = lg_mincells - LG_CKH_BUCKET_CELLS;
 ckh->lg_curbuckets = lg_mincells - LG_CKH_BUCKET_CELLS;
 ckh->hash = hash;
 ckh->keycomp = keycomp;

 usize = sz_sa2u(sizeof(ckhc_t) << lg_mincells, CACHELINE);
 if (unlikely(usize == 0 || usize > SC_LARGE_MAXCLASS)) {
  ret = 1;
  goto label_return;
 }
 ckh->tab = (ckhc_t *)ipallocztm(tsd_tsdn(tsd), usize, CACHELINE, 1,
     ((void*)0), 1, arena_ichoose(tsd, ((void*)0)));
 if (ckh->tab == ((void*)0)) {
  ret = 1;
  goto label_return;
 }

 ret = 0;
label_return:
 return ret;
}
