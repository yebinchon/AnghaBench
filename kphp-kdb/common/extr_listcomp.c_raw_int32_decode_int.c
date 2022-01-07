
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ptr; } ;
struct list_decoder {int k; TYPE_1__ br; } ;


 int memcpy (int*,int,int) ;

__attribute__((used)) static int raw_int32_decode_int (struct list_decoder *dec) {
  int r;
  memcpy (&r, dec->br.ptr, sizeof (int));
  dec->br.ptr += 4;
  dec->k++;
  return r;
}
