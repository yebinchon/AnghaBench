
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_encoder {int* L; int k; } ;



__attribute__((used)) static void store_int (struct list_encoder *enc, int d) {

  enc->L[enc->k++] = d;
}
