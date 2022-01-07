
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_encoder {int* L; int K; int N; int k; int * encode_int; } ;


 int* malloc (int) ;
 int store_int ;

__attribute__((used)) static void interpolative_encoder_init (struct list_encoder *enc) {
  enc->L = malloc ( (enc->K + 2) * sizeof (enc->L[0]));
  enc->L[0] = -1;
  enc->L[enc->K+1] = enc->N;
  enc->k = 1;
  enc->encode_int = &store_int;
}
