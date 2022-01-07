
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int rep3; int rep2; int rep1; int rep0; int dist_special; int * dist_align; int len; int ** dist_slot; int match_len_dec; int state; } ;
struct xz_dec_lzma2 {TYPE_1__ lzma; int rc; } ;


 int ALIGN_BITS ;
 int DIST_MODEL_END ;
 int DIST_MODEL_START ;
 int DIST_SLOTS ;
 size_t lzma_get_dist_state (int ) ;
 int lzma_len (struct xz_dec_lzma2*,int *,int) ;
 int lzma_state_match (int *) ;
 int rc_bittree (int *,int *,int) ;
 int rc_bittree_reverse (int *,int *,int*,int) ;
 int rc_direct (int *,int*,int) ;

__attribute__((used)) static void lzma_match(struct xz_dec_lzma2 *s, uint32_t pos_state)
{
 uint16_t *probs;
 uint32_t dist_slot;
 uint32_t limit;

 lzma_state_match(&s->lzma.state);

 s->lzma.rep3 = s->lzma.rep2;
 s->lzma.rep2 = s->lzma.rep1;
 s->lzma.rep1 = s->lzma.rep0;

 lzma_len(s, &s->lzma.match_len_dec, pos_state);

 probs = s->lzma.dist_slot[lzma_get_dist_state(s->lzma.len)];
 dist_slot = rc_bittree(&s->rc, probs, DIST_SLOTS) - DIST_SLOTS;

 if (dist_slot < DIST_MODEL_START) {
  s->lzma.rep0 = dist_slot;
 } else {
  limit = (dist_slot >> 1) - 1;
  s->lzma.rep0 = 2 + (dist_slot & 1);

  if (dist_slot < DIST_MODEL_END) {
   s->lzma.rep0 <<= limit;
   probs = s->lzma.dist_special + s->lzma.rep0
     - dist_slot - 1;
   rc_bittree_reverse(&s->rc, probs,
     &s->lzma.rep0, limit);
  } else {
   rc_direct(&s->rc, &s->lzma.rep0, limit - ALIGN_BITS);
   s->lzma.rep0 <<= ALIGN_BITS;
   rc_bittree_reverse(&s->rc, s->lzma.dist_align,
     &s->lzma.rep0, ALIGN_BITS);
  }
 }
}
