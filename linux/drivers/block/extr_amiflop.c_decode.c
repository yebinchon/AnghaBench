
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long ulong ;



__attribute__((used)) static unsigned long decode (unsigned long *data, unsigned long *raw,
        int len)
{
 ulong *odd, *even;


 len >>= 2;
 odd = raw;
 even = odd + len;


 raw += len * 2;

 do {
  *data++ = ((*odd++ & 0x55555555) << 1) | (*even++ & 0x55555555);
 } while (--len != 0);

 return (ulong)raw;
}
