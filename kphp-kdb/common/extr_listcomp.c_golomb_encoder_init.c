
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_encoder {int k; int p; int M; int last; int * encode_int; int K; int N; } ;


 int compute_golomb_parameter (int ,int ) ;
 int golomb_encode_int ;

__attribute__((used)) static void golomb_encoder_init (struct list_encoder *enc) {
  int M = compute_golomb_parameter (enc->N, enc->K);
  enc->k = 31;
  enc->p = 1;
  while (enc->p <= M) {
    enc->p *= 2;
    enc->k--;
  }
  enc->p -= M;
  enc->M = M;
  enc->last = -1;
  enc->encode_int = &golomb_encode_int;
}
