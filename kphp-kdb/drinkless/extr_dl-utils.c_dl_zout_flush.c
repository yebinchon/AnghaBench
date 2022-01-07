
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_4__ {int buf_len; int left; scalar_t__ buf; scalar_t__ ptr; } ;
typedef TYPE_1__ dl_zout ;


 int dl_zout_write_impl (TYPE_1__*,scalar_t__,scalar_t__) ;

void dl_zout_flush (dl_zout *f) {
  ssize_t d = f->ptr - f->buf;
  if (d) {
    dl_zout_write_impl (f, f->buf, d);

    f->ptr = f->buf;
    f->left = f->buf_len;
  }
}
