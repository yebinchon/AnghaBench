
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ off_t ;
struct TYPE_3__ {size_t id; scalar_t__ left; } ;
typedef TYPE_1__ dl_zin ;


 scalar_t__* fpos ;

off_t dl_zin_pos (dl_zin *f) {
  return fpos[f->id] - f->left;
}
