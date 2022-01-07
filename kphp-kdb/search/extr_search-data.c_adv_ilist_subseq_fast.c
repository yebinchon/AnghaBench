
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dec; } ;
struct TYPE_5__ {int last_subseq; TYPE_1__ dec_subseq; } ;
typedef TYPE_2__ ilist_decoder_t ;


 int list_interpolative_ext_forward_decode_idx (int ,int) ;

__attribute__((used)) static int adv_ilist_subseq_fast (ilist_decoder_t *D, int idx) {
  D->last_subseq = list_interpolative_ext_forward_decode_idx (D->dec_subseq.dec, idx);
  return (D->last_subseq == idx) ? 1 : 0;
}
