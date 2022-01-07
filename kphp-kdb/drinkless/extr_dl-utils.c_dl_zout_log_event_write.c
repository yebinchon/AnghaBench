
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int left; int ptr; } ;
typedef TYPE_1__ dl_zout ;


 int dl_zout_flush (TYPE_1__*) ;
 int memcpy (int,void const*,size_t) ;
 int memset (int,int,size_t) ;

int dl_zout_log_event_write (dl_zout *f, const void *src, int len) {
  int adj_bytes = -len & 3;

  while (len) {
    int cur = len;
    if (f->left < len) {
      cur = f->left;
    }
    memcpy (f->ptr, src, (size_t)cur);
    f->ptr += cur;
    f->left -= cur;

    if ((len -= cur)) {
      dl_zout_flush (f);
      src += cur;
    }
  }

  if (f->left < adj_bytes) {
    dl_zout_flush (f);
  }
  memset (f->ptr, adj_bytes, (size_t)adj_bytes);
  f->ptr += adj_bytes;
  f->left -= adj_bytes;

  return len;
}
