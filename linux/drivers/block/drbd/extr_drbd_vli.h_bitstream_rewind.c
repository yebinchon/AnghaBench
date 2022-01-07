
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitstream {int buf_len; int buf; int cur; } ;


 int bitstream_cursor_reset (int *,int ) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static inline void bitstream_rewind(struct bitstream *bs)
{
 bitstream_cursor_reset(&bs->cur, bs->buf);
 memset(bs->buf, 0, bs->buf_len);
}
