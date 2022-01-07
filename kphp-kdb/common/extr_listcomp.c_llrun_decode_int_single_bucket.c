
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_decoder {int M; int br; int last; } ;


 int bread_nbits (int *,int const) ;

__attribute__((used)) static int llrun_decode_int_single_bucket (struct list_decoder *dec) {
  const int o = dec->M;
  return dec->last += bread_nbits (&dec->br, o) + (1 << o);
}
