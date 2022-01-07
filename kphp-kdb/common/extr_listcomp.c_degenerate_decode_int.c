
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_decoder {scalar_t__ k; scalar_t__ K; } ;



__attribute__((used)) static int degenerate_decode_int (struct list_decoder *dec) {
  if (dec->k >= dec->K) {
    return 0x7fffffff;
  }
  return dec->k++;
}
