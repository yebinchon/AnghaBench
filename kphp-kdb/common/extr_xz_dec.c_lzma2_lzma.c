
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_6__ {size_t size; size_t buf; } ;
struct TYPE_5__ {size_t compressed; } ;
struct TYPE_4__ {size_t in_limit; size_t in; size_t in_pos; } ;
struct xz_dec_lzma2 {TYPE_3__ temp; TYPE_2__ lzma2; TYPE_1__ rc; } ;
struct xz_buf {size_t in_size; size_t in_pos; size_t in; } ;


 int LZMA_IN_REQUIRED ;
 int lzma_main (struct xz_dec_lzma2*) ;
 int memcpy (size_t,size_t,size_t) ;
 int memmove (size_t,int ,size_t) ;
 int memzero (scalar_t__,int) ;

__attribute__((used)) static char lzma2_lzma(struct xz_dec_lzma2 *s, struct xz_buf *b)
{
 size_t in_avail;
 uint32_t tmp;

 in_avail = b->in_size - b->in_pos;
 if (s->temp.size > 0 || s->lzma2.compressed == 0) {
  tmp = 2 * LZMA_IN_REQUIRED - s->temp.size;
  if (tmp > s->lzma2.compressed - s->temp.size)
   tmp = s->lzma2.compressed - s->temp.size;
  if (tmp > in_avail)
   tmp = in_avail;

  memcpy(s->temp.buf + s->temp.size, b->in + b->in_pos, tmp);

  if (s->temp.size + tmp == s->lzma2.compressed) {
   memzero(s->temp.buf + s->temp.size + tmp,
     sizeof(s->temp.buf)
      - s->temp.size - tmp);
   s->rc.in_limit = s->temp.size + tmp;
  } else if (s->temp.size + tmp < LZMA_IN_REQUIRED) {
   s->temp.size += tmp;
   b->in_pos += tmp;
   return 1;
  } else {
   s->rc.in_limit = s->temp.size + tmp - LZMA_IN_REQUIRED;
  }

  s->rc.in = s->temp.buf;
  s->rc.in_pos = 0;

  if (!lzma_main(s) || s->rc.in_pos > s->temp.size + tmp)
   return 0;

  s->lzma2.compressed -= s->rc.in_pos;

  if (s->rc.in_pos < s->temp.size) {
   s->temp.size -= s->rc.in_pos;
   memmove(s->temp.buf, s->temp.buf + s->rc.in_pos,
     s->temp.size);
   return 1;
  }

  b->in_pos += s->rc.in_pos - s->temp.size;
  s->temp.size = 0;
 }

 in_avail = b->in_size - b->in_pos;
 if (in_avail >= LZMA_IN_REQUIRED) {
  s->rc.in = b->in;
  s->rc.in_pos = b->in_pos;

  if (in_avail >= s->lzma2.compressed + LZMA_IN_REQUIRED)
   s->rc.in_limit = b->in_pos + s->lzma2.compressed;
  else
   s->rc.in_limit = b->in_size - LZMA_IN_REQUIRED;

  if (!lzma_main(s))
   return 0;

  in_avail = s->rc.in_pos - b->in_pos;
  if (in_avail > s->lzma2.compressed)
   return 0;

  s->lzma2.compressed -= in_avail;
  b->in_pos = s->rc.in_pos;
 }

 in_avail = b->in_size - b->in_pos;
 if (in_avail < LZMA_IN_REQUIRED) {
  if (in_avail > s->lzma2.compressed)
   in_avail = s->lzma2.compressed;

  memcpy(s->temp.buf, b->in + b->in_pos, in_avail);
  s->temp.size = in_avail;
  b->in_pos += in_avail;
 }

 return 1;
}
