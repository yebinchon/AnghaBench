
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_encoder {int k; } ;


 int assert (int) ;

__attribute__((used)) static void degenerate_encode_int (struct list_encoder *enc, int d) {
  assert (d == enc->k);
  enc->k++;
}
