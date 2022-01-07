
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* hex_byte_pack (char*,int ) ;

__attribute__((used)) static char *__add_val_as_hex(char *dst, const unsigned char *src, size_t count)
{
 while (count--)
  dst = hex_byte_pack(dst, *src++);
 return dst;
}
