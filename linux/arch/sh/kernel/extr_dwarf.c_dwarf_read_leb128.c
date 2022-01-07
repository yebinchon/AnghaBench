
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int result ;


 unsigned char __raw_readb (char*) ;

__attribute__((used)) static inline unsigned long dwarf_read_leb128(char *addr, int *ret)
{
 unsigned char byte;
 int result, shift;
 int num_bits;
 int count;

 result = 0;
 shift = 0;
 count = 0;

 while (1) {
  byte = __raw_readb(addr);
  addr++;
  result |= (byte & 0x7f) << shift;
  shift += 7;
  count++;

  if (!(byte & 0x80))
   break;
 }


 num_bits = 8 * sizeof(result);

 if ((shift < num_bits) && (byte & 0x40))
  result |= (-1 << shift);

 *ret = result;

 return count;
}
