
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct search_list_decoder {scalar_t__ remaining; TYPE_2__* dec; } ;
struct TYPE_4__ {int last_subseq; struct search_list_decoder dec_subseq; } ;
typedef TYPE_1__ ilist_decoder_t ;
struct TYPE_5__ {int (* decode_int ) (TYPE_2__*) ;} ;


 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int adv_ilist_subseq_slow (ilist_decoder_t *D, int idx) {
  struct search_list_decoder *dec_subseq = &D->dec_subseq;
  while (D->last_subseq < idx) {
    if (dec_subseq->remaining <= 0) {
      D->last_subseq = 0x7fffffff;
      return 0;
    }
    dec_subseq->remaining--;
    D->last_subseq = dec_subseq->dec->decode_int (dec_subseq->dec);
  }
  return (D->last_subseq == idx) ? 1 : 0;
}
