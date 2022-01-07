
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buf_len; int * buf; } ;
typedef TYPE_1__ dl_zout ;


 int dl_free (int *,scalar_t__) ;

void dl_zout_free_buffer (dl_zout *f) {
  if (f->buf != ((void*)0)) {
    dl_free (f->buf, f->buf_len);
    f->buf = ((void*)0);
    f->buf_len = 0;
  }
}
