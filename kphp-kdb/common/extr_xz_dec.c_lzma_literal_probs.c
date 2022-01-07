
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int lc; int literal_pos_mask; int ** literal; } ;
struct TYPE_4__ {int pos; } ;
struct xz_dec_lzma2 {TYPE_1__ lzma; TYPE_2__ dict; } ;


 int dict_get (TYPE_2__*,int ) ;

__attribute__((used)) static uint16_t *lzma_literal_probs(struct xz_dec_lzma2 *s)
{
 uint32_t prev_byte = dict_get(&s->dict, 0);
 uint32_t low = prev_byte >> (8 - s->lzma.lc);
 uint32_t high = (s->dict.pos & s->lzma.literal_pos_mask) << s->lzma.lc;
 return s->lzma.literal[low + high];
}
