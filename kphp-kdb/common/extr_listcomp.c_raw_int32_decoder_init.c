
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prefix_bit_offset; int ptr; } ;
struct list_decoder {int * decode_int; TYPE_1__ br; scalar_t__ k; } ;


 int assert (int) ;
 int raw_int32_decode_int ;

__attribute__((used)) static void raw_int32_decoder_init (struct list_decoder *dec) {
  assert (!(dec->br.prefix_bit_offset & 7));
  dec->k = 0;
  dec->br.ptr--;
  dec->decode_int = &raw_int32_decode_int;
}
