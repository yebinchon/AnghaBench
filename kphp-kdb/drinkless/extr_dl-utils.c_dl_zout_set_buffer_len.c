
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ptr; scalar_t__ buf; int buf_len; int left; } ;
typedef TYPE_1__ dl_zout ;


 int assert (int) ;
 scalar_t__ dl_malloc (size_t) ;
 int dl_zout_free_buffer (TYPE_1__*) ;

void dl_zout_set_buffer_len (dl_zout *f, int len) {
  assert (f->ptr == f->buf);

  if (f->buf_len != len) {
    dl_zout_free_buffer (f);
    f->buf_len = len;
    assert ("Too small buffer for output" && f->buf_len > 8);
    f->buf = dl_malloc ((size_t)f->buf_len);
  }

  f->ptr = f->buf;
  f->left = f->buf_len;
}
