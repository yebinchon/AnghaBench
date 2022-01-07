
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_3__ {scalar_t__ left; int r_left; size_t id; int buf; int ptr; scalar_t__ buf_len; } ;
typedef TYPE_1__ dl_zin ;


 int assert (int) ;
 int * fd ;
 int* fpos ;
 scalar_t__ likely (int) ;
 scalar_t__ min (int ,int) ;
 int read (int ,int ,size_t) ;

__attribute__((used)) static inline int dl_zin_flush (dl_zin *f) {
  assert (f->left == 0);
  if (likely(f->r_left)) {
    int cur = (int) min ((off_t)f->buf_len, f->r_left);
    assert (read (fd[f->id], f->buf, (size_t)cur) == cur);
    fpos[f->id] += cur;
    f->r_left -= cur;
    f->left = cur;
    f->ptr = f->buf;
    return cur;
  } else {
    return 0;
  }
}
