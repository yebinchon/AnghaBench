
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int m; int ptr; } ;
struct list_encoder {TYPE_1__ bw; int (* encode_int ) (struct list_encoder*,int) ;} ;
struct bitwriter {int m; int ptr; int end_ptr; int start_ptr; } ;
struct TYPE_5__ {size_t doc_id; int position; } ;
typedef TYPE_2__ pair_t ;


 int assert (int) ;
 int bwrite_gamma_code (struct bitwriter*,int) ;
 scalar_t__ bwrite_get_bits_written (struct bitwriter*) ;
 int coordinate_bits ;
 int* item_positions ;
 int le_golomb ;
 int list_encoder_init (struct list_encoder*,int,int,int ,int ,int ,scalar_t__) ;
 int stub1 (struct list_encoder*,int) ;
 size_t tot_items ;

__attribute__((used)) static void bwrite_coordinates_list (struct bitwriter *bw, pair_t *P, int len) {
  int i;
  assert (P->doc_id >= 0 && P->doc_id < tot_items);
  coordinate_bits -= bwrite_get_bits_written (bw);
  bwrite_gamma_code (bw, len);
  struct list_encoder enc;
  const int N = item_positions[P->doc_id];
  assert (len > 0 && len <= N);
  list_encoder_init (&enc, item_positions[P->doc_id], len, bw->start_ptr, bw->end_ptr, le_golomb, bwrite_get_bits_written (bw));

  for (i = 0; i < len; i++) {

    assert (P[i].position >= 1 && P[i].position <= N);
    assert (!i || P[i-1].position < P[i].position);
    enc.encode_int (&enc, P[i].position - 1);
  }


  bw->ptr = enc.bw.ptr;
  bw->m = enc.bw.m;
  coordinate_bits += bwrite_get_bits_written (bw);
}
