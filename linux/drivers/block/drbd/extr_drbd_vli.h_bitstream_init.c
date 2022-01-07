
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitstream {size_t buf_len; unsigned int pad_bits; void* buf; int cur; } ;


 int bitstream_cursor_reset (int *,void*) ;

__attribute__((used)) static inline void bitstream_init(struct bitstream *bs, void *s, size_t len, unsigned int pad_bits)
{
 bs->buf = s;
 bs->buf_len = len;
 bs->pad_bits = pad_bits;
 bitstream_cursor_reset(&bs->cur, bs->buf);
}
