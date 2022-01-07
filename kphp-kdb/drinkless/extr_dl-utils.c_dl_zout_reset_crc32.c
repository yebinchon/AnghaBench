
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int crc32_complement; } ;
typedef TYPE_1__ dl_zout ;


 int dl_zout_flush (TYPE_1__*) ;

void dl_zout_reset_crc32 (dl_zout *f) {

  dl_zout_flush (f);
  f->crc32_complement = 0xFFFFFFFF;
}
