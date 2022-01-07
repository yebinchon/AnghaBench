
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int use_crc32; int crc32_complement; } ;
typedef TYPE_1__ dl_zout ;



void dl_zout_set_crc32_flag (dl_zout *f, int flag) {
  f->use_crc32 = flag;
  f->crc32_complement = 0xFFFFFFFF;
}
