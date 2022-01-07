
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int left; int ptr; } ;
typedef TYPE_1__ dl_zin ;


 int dl_zin_flush (TYPE_1__*) ;
 int memcpy (void*,int,size_t) ;

int dl_zin_read (dl_zin *f, void *dest, int len) {
  int tmp = len;
  while (len) {
    int cur = len;
    if (cur > f->left) {
      cur = f->left;
    }
    memcpy (dest, f->ptr, (size_t)cur);
    f->ptr += cur;
    f->left -= cur;

    if ((len -= cur) && !dl_zin_flush (f)) {
      return tmp - len;
    }
    dest += cur;
  }
  return tmp;
}
