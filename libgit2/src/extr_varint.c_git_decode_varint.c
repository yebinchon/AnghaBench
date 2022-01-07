
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;


 scalar_t__ MSB (int,int) ;

uintmax_t git_decode_varint(const unsigned char *bufp, size_t *varint_len)
{
 const unsigned char *buf = bufp;
 unsigned char c = *buf++;
 uintmax_t val = c & 127;
 while (c & 128) {
  val += 1;
  if (!val || MSB(val, 7)) {


   *varint_len = 0;
   return 0;
  }
  c = *buf++;
  val = (val << 7) + (c & 127);
 }
 *varint_len = buf - bufp;
 return val;
}
