
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_decoder {int size; } ;


 int zfree (struct list_decoder*,int ) ;

void zfree_list_decoder (struct list_decoder *dec) {
  zfree (dec, dec->size);
}
