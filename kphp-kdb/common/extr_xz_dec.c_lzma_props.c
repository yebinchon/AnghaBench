
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int pos_mask; int literal_pos_mask; int lc; } ;
struct xz_dec_lzma2 {TYPE_1__ lzma; } ;


 int lzma_reset (struct xz_dec_lzma2*) ;

__attribute__((used)) static char lzma_props(struct xz_dec_lzma2 *s, uint8_t props)
{
 if (props > (4 * 5 + 4) * 9 + 8)
  return 0;

 s->lzma.pos_mask = 0;
 while (props >= 9 * 5) {
  props -= 9 * 5;
  ++s->lzma.pos_mask;
 }

 s->lzma.pos_mask = (1 << s->lzma.pos_mask) - 1;

 s->lzma.literal_pos_mask = 0;
 while (props >= 9) {
  props -= 9;
  ++s->lzma.literal_pos_mask;
 }

 s->lzma.lc = props;

 if (s->lzma.lc + s->lzma.literal_pos_mask > 4)
  return 0;

 s->lzma.literal_pos_mask = (1 << s->lzma.literal_pos_mask) - 1;

 lzma_reset(s);

 return 1;
}
