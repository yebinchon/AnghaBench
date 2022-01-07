
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buf_len; int buf; } ;
typedef TYPE_1__ dl_zin ;


 int dl_free (int ,size_t) ;

void dl_zin_free (dl_zin *f) {
  dl_free (f->buf, (size_t)f->buf_len);
}
