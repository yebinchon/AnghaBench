
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ off_t ;
struct TYPE_3__ {int buf_len; int id; scalar_t__ r_left; scalar_t__ left; int buf; int ptr; } ;
typedef TYPE_1__ dl_zin ;


 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;
 int assert (int ) ;
 int dl_malloc (size_t) ;
 int * fd ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;

void dl_zin_init (dl_zin *f, int id, int len) {
  f->buf_len = len;
  f->id = id;

  assert ("Too small buffer for input" && f->buf_len > 8);
  f->ptr = f->buf = dl_malloc ((size_t)f->buf_len);
  f->left = 0;

  off_t cur = lseek (fd[f->id], 0, SEEK_CUR),
        end = lseek (fd[f->id], 0, SEEK_END);
  lseek (fd[f->id], cur, SEEK_SET);
  f->r_left = end - cur;
}
