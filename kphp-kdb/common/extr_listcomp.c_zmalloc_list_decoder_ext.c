
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_decoder {int size; int tp; int N; int K; int M; int * decode_int; scalar_t__ k; scalar_t__ data; scalar_t__ p; int br; } ;
struct interpolative_ext_decoder_stack_entry {int left_value; int right_idx; int right_value; scalar_t__ left_idx; } ;
typedef enum list_coding_type { ____Placeholder_list_coding_type } list_coding_type ;


 int bread_init (int *,unsigned char const*,int) ;
 int bsr (int) ;
 int interpolative_ext_decode_int ;
 int interpolative_ext_decode_node (struct list_decoder*,struct interpolative_ext_decoder_stack_entry*) ;
 int le_interpolative_ext ;
 struct list_decoder* zmalloc (int) ;
 struct list_decoder* zmalloc_list_decoder (int,int,unsigned char const*,int,int) ;

struct list_decoder *zmalloc_list_decoder_ext (int N, int K, const unsigned char *start_ptr, enum list_coding_type tp, int prefix_bit_offset, int extra) {
  if (tp != le_interpolative_ext) {
    return zmalloc_list_decoder (N, K, start_ptr, tp, prefix_bit_offset);
  }
  int sz = sizeof (struct list_decoder);
  sz += sizeof (struct interpolative_ext_decoder_stack_entry) * (bsr (K+1) + 1);
  struct list_decoder *dec = zmalloc (sz);
  dec->size = sz;
  dec->tp = tp;
  bread_init (&dec->br, start_ptr, prefix_bit_offset);
  dec->N = N;
  dec->K = K;
  dec->p = 0;
  dec->M = extra;
  struct interpolative_ext_decoder_stack_entry *data = (struct interpolative_ext_decoder_stack_entry *) dec->data;
  data->left_idx = 0;
  data->left_value = -1;
  data->right_idx = dec->K + 1;
  data->right_value = dec->N;
  interpolative_ext_decode_node (dec, data);
  dec->k = 0;
  dec->decode_int = &interpolative_ext_decode_int;
  return dec;
}
