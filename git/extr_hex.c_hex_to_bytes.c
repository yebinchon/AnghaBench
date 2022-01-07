
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hexval (char const) ;

int hex_to_bytes(unsigned char *binary, const char *hex, size_t len)
{
 for (; len; len--, hex += 2) {
  unsigned int val = (hexval(hex[0]) << 4) | hexval(hex[1]);

  if (val & ~0xff)
   return -1;
  *binary++ = val;
 }
 return 0;
}
