
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_encoder {scalar_t__ k; scalar_t__ K; int L; } ;


 int assert (int) ;
 int free (int ) ;
 int interpolative_encode_sublist (struct list_encoder*,int ,scalar_t__) ;

__attribute__((used)) static void interpolative_encoder_finish (struct list_encoder *enc) {
  assert (enc->k == enc->K + 1);
  interpolative_encode_sublist (enc, 0, enc->K + 1);
  free (enc->L);
}
