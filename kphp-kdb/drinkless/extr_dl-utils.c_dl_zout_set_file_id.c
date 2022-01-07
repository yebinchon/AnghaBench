
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; scalar_t__ written; } ;
typedef TYPE_1__ dl_zout ;



void dl_zout_set_file_id (dl_zout *f, int fid) {
  f->id = fid;
  f->written = 0;
}
