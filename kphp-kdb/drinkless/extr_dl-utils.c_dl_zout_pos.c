
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ off_t ;
struct TYPE_3__ {size_t id; scalar_t__ buf; scalar_t__ ptr; } ;
typedef TYPE_1__ dl_zout ;


 scalar_t__* fpos ;

off_t dl_zout_pos (dl_zout *f) {
  return fpos[f->id] + (f->ptr - f->buf);
}
