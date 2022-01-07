
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long from64to16 (unsigned long) ;

__attribute__((used)) static inline unsigned long do_csum(const unsigned char * buff, int len)
{
 int odd, count;
 unsigned long result = 0;

 if (len <= 0)
  goto out;
 odd = 1 & (unsigned long) buff;
 if (odd) {
  result = *buff << 8;
  len--;
  buff++;
 }
 count = len >> 1;
 if (count) {
  if (2 & (unsigned long) buff) {
   result += *(unsigned short *) buff;
   count--;
   len -= 2;
   buff += 2;
  }
  count >>= 1;
  if (count) {
   if (4 & (unsigned long) buff) {
    result += *(unsigned int *) buff;
    count--;
    len -= 4;
    buff += 4;
   }
   count >>= 1;
   if (count) {
    unsigned long carry = 0;
    do {
     unsigned long w = *(unsigned long *) buff;
     count--;
     buff += 8;
     result += carry;
     result += w;
     carry = (w > result);
    } while (count);
    result += carry;
    result = (result & 0xffffffff) + (result >> 32);
   }
   if (len & 4) {
    result += *(unsigned int *) buff;
    buff += 4;
   }
  }
  if (len & 2) {
   result += *(unsigned short *) buff;
   buff += 2;
  }
 }
 if (len & 1)
  result += *buff;
 result = from64to16(result);
 if (odd)
  result = ((result >> 8) & 0xff) | ((result & 0xff) << 8);
out:
 return result;
}
