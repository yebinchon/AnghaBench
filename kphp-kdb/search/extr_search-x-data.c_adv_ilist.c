
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct list_decoder {int (* decode_int ) (struct list_decoder*) ;int br; } ;
struct index_item {int extra; int item_id; } ;
struct TYPE_4__ {scalar_t__ remaining; struct list_decoder* dec; } ;
struct TYPE_5__ {int doc_id; unsigned int freq_title; unsigned int freq_text; TYPE_1__ dec; int item_id; } ;
typedef TYPE_2__ ilist_decoder_t ;


 int FLAG_DELETED ;
 struct index_item* IndexItems ;
 int assert (int) ;
 int bread_gamma_code (int *) ;
 int idx_items ;
 int stub1 (struct list_decoder*) ;

__attribute__((used)) static int adv_ilist (ilist_decoder_t *D) {
  struct index_item *II;
  while (D->dec.remaining > 0) {
    struct list_decoder *dec = D->dec.dec;
    D->dec.remaining--;
    D->doc_id = dec->decode_int (D->dec.dec);
    assert (D->doc_id >= 0 && D->doc_id < idx_items);
    unsigned freq1 = bread_gamma_code (&dec->br) - 1;
    unsigned freq2 = bread_gamma_code (&dec->br) - 1;
    II = IndexItems + D->doc_id;
    if (!(II->extra & FLAG_DELETED)) {
      if (!freq1) { freq2++; }
      D->item_id = II->item_id;
      D->freq_title = freq1;
      D->freq_text = freq2;
      return D->doc_id;
    }
  }
  if (!D->dec.remaining) {
    D->doc_id = -1;
    D->item_id = 0;
    D->freq_title = D->freq_text = 0;
    D->dec.remaining--;
    return -1;
  }
  return -1;
}
