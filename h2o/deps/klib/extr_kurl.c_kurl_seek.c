
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_7__ {int off0; int p_buf; int l_buf; void* err; scalar_t__ done_reading; int fd; } ;
typedef TYPE_1__ kurl_t ;


 void* KURL_INV_WHENCE ;
 void* KURL_SEEK_OUT ;
 int KU_MAX_SKIP ;
 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;
 scalar_t__ fill_buffer (TYPE_1__*) ;
 scalar_t__ kurl_isfile (TYPE_1__*) ;
 int kurl_read (TYPE_1__*,int ,int) ;
 int lseek (int ,int,int) ;
 scalar_t__ prepare (TYPE_1__*,int) ;

off_t kurl_seek(kurl_t *ku, off_t offset, int whence)
{
 off_t new_off = -1, cur_off;
 int failed = 0, seek_end = 0;
 if (ku == 0) return -1;
 cur_off = ku->off0 + ku->p_buf;
 if (whence == SEEK_SET) new_off = offset;
 else if (whence == SEEK_CUR) new_off += cur_off + offset;
 else if (whence == SEEK_END && kurl_isfile(ku)) new_off = lseek(ku->fd, offset, SEEK_END), seek_end = 1;
 else {
  ku->err = KURL_INV_WHENCE;
  return -1;
 }
 if (new_off < 0) {
  ku->err = KURL_SEEK_OUT;
  return -1;
 }
 if (!seek_end && new_off >= cur_off && new_off - cur_off + ku->p_buf < ku->l_buf) {
  ku->p_buf += new_off - cur_off;
  return ku->off0 + ku->p_buf;
 }
 if (seek_end || new_off < cur_off || new_off - cur_off > KU_MAX_SKIP) {
  ku->off0 = new_off;
  ku->done_reading = 0;
  if (prepare(ku, 1) < 0 || fill_buffer(ku) <= 0) failed = 1;
 } else {
  off_t r;
  r = kurl_read(ku, 0, new_off - cur_off);
  if (r + cur_off != new_off) failed = 1;
 }
 if (failed) ku->err = KURL_SEEK_OUT, ku->l_buf = ku->p_buf = 0, new_off = -1;
 return new_off;
}
