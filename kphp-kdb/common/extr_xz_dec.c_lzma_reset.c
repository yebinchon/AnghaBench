
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int** is_match; scalar_t__ rep3; scalar_t__ rep2; scalar_t__ rep1; scalar_t__ rep0; int state; } ;
struct xz_dec_lzma2 {int rc; TYPE_1__ lzma; } ;


 size_t PROBS_TOTAL ;
 int RC_BIT_MODEL_TOTAL ;
 int STATE_LIT_LIT ;
 int rc_reset (int *) ;

__attribute__((used)) static void lzma_reset(struct xz_dec_lzma2 *s)
{
 uint16_t *probs;
 size_t i;

 s->lzma.state = STATE_LIT_LIT;
 s->lzma.rep0 = 0;
 s->lzma.rep1 = 0;
 s->lzma.rep2 = 0;
 s->lzma.rep3 = 0;
 probs = s->lzma.is_match[0];
 for (i = 0; i < PROBS_TOTAL; ++i)
  probs[i] = RC_BIT_MODEL_TOTAL / 2;

 rc_reset(&s->rc);
}
