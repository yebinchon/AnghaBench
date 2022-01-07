
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct list_encoder {int bw; int (* encode_int ) (struct list_encoder*,int) ;} ;
struct TYPE_5__ {int doc_id; TYPE_3__* sword; int dec; int extra; } ;
typedef TYPE_1__ ilist_decoder_t ;
typedef scalar_t__ hash_t ;
struct TYPE_7__ {scalar_t__ word; unsigned int doc_id_and_priority; } ;
struct TYPE_6__ {scalar_t__ word; int file_offset; int bytes; int len; } ;


 TYPE_4__* IndexHapaxLegomena ;
 TYPE_3__* IndexWords ;
 int bwrite_gamma_code (int *,unsigned int) ;
 int idx_hapax_legomena ;
 int idx_items ;
 int idx_words ;
 int init_decoder (int *,int ,int ,int ,int *) ;
 int le_golomb ;
 int list_encoder_finish (struct list_encoder*) ;
 int list_encoder_init (struct list_encoder*,int ,int,void*,void*,int ,int ) ;
 int stub1 (struct list_encoder*,int) ;

int init_ilist_decoder (ilist_decoder_t *D, hash_t word) {



  D->doc_id = -1;

  int a = -1, b = idx_words, c;

  while (b - a > 1) {
    c = ((a + b) >> 1);
    if (IndexWords[c].word <= word) { a = c; } else { b = c; }
  }

  if (a < 0 || IndexWords[a].word != word) {
    a = -1;
    b = idx_hapax_legomena;
    while (b - a > 1) {
      c = ((a + b) >> 1);
      if (IndexHapaxLegomena[c].word <= word) { a = c; } else { b = c; }
    }
    if (a >= 0 && IndexHapaxLegomena[a].word == word) {
      unsigned int u = IndexHapaxLegomena[a].doc_id_and_priority;
      int doc_id = u & 0x7fffffff;
      unsigned freq1, freq2;
      if (u & 0x80000000) {

        freq1 = 2;
        freq2 = 1;
      } else {

        freq1 = 1;
        freq2 = 1;
      }
      void *Li = &D->extra, *Le = Li + 8;

      struct list_encoder enc;
      list_encoder_init (&enc, idx_items, 1, Li, Le, le_golomb, 0);
      enc.encode_int (&enc, doc_id);
      bwrite_gamma_code (&enc.bw, freq1);
      bwrite_gamma_code (&enc.bw, freq2);
      list_encoder_finish (&enc);
      return 1;
    }
    return 0;
  }
  D->sword = IndexWords + a;
  init_decoder (&D->dec, idx_items, D->sword->len, D->sword->bytes, &D->sword->file_offset);
  return 1;
}
