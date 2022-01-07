
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlist_decoder {int size; } ;


 int zfree (struct mlist_decoder*,int ) ;

void zfree_mlist_decoder (struct mlist_decoder *dec) {
  zfree (dec, dec->size);
}
