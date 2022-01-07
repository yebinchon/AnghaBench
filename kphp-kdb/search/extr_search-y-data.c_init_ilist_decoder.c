
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int doc_id; TYPE_4__* sword; } ;
typedef TYPE_1__ ilist_decoder_t ;
typedef int iheap_en_t ;
typedef scalar_t__ hash_t ;
struct TYPE_6__ {scalar_t__ word; int file_offset; int len; } ;


 TYPE_4__* IndexWords ;
 int idx_items ;
 int idx_words ;
 int init_decoder (int *,TYPE_1__*,int ,int ,int *,int ) ;
 int searchy_is_term (scalar_t__) ;

int init_ilist_decoder (iheap_en_t *H, ilist_decoder_t *D, hash_t word) {



  D->doc_id = -1;

  int a = -1, b = idx_words, c;

  while (b - a > 1) {
    c = ((a + b) >> 1);
    if (IndexWords[c].word <= word) { a = c; } else { b = c; }
  }

  if (a < 0 || IndexWords[a].word != word) {
    return 0;
  }

  D->sword = IndexWords + a;
  init_decoder (H, D, idx_items, D->sword->len, &D->sword->file_offset, searchy_is_term (word));
  return 1;
}
