
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_decoder {int * decode_int; scalar_t__ k; int N; scalar_t__ K; scalar_t__ data; scalar_t__ p; } ;
struct interpolative_decoder_stack_entry {int left_value; int right_value; scalar_t__ right_idx; int middle_value; scalar_t__ left_idx; } ;


 int INTERPOLATIVE_DECODER_NOT_EVALUATED ;
 int interpolative_decode_int ;

__attribute__((used)) static void interpolative_decoder_init (struct list_decoder *dec) {
  dec->p = 0;
  struct interpolative_decoder_stack_entry *data = (struct interpolative_decoder_stack_entry *) dec->data;
  data->left_idx = 0;
  data->left_value = -1;
  data->middle_value = INTERPOLATIVE_DECODER_NOT_EVALUATED;
  data->right_idx = dec->K + 1;
  data->right_value = dec->N;
  dec->k = 0;
  dec->decode_int = &interpolative_decode_int;
}
