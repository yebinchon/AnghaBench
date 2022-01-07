
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct TYPE_2__ {unsigned char* b; unsigned int const bit; } ;
struct bitstream {unsigned char* buf; int buf_len; TYPE_1__ cur; } ;


 int ENOBUFS ;
 int bitstream_cursor_advance (TYPE_1__*,unsigned int const) ;

__attribute__((used)) static inline int bitstream_put_bits(struct bitstream *bs, u64 val, const unsigned int bits)
{
 unsigned char *b = bs->cur.b;
 unsigned int tmp;

 if (bits == 0)
  return 0;

 if ((bs->cur.b + ((bs->cur.bit + bits -1) >> 3)) - bs->buf >= bs->buf_len)
  return -ENOBUFS;


 if (bits < 64)
  val &= ~0ULL >> (64 - bits);

 *b++ |= (val & 0xff) << bs->cur.bit;

 for (tmp = 8 - bs->cur.bit; tmp < bits; tmp += 8)
  *b++ |= (val >> tmp) & 0xff;

 bitstream_cursor_advance(&bs->cur, bits);
 return bits;
}
