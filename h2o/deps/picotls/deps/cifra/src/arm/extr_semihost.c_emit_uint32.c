
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int emit (char*) ;
 char* hex_chars ;

void emit_uint32(uint32_t x)
{
  char buf[sizeof "0x11223344"];
  buf[0] = '0';
  buf[1] = 'x';
  buf[2] = hex_chars[(x >> 28) & 0xf];
  buf[3] = hex_chars[(x >> 24) & 0xf];
  buf[4] = hex_chars[(x >> 20) & 0xf];
  buf[5] = hex_chars[(x >> 16) & 0xf];
  buf[6] = hex_chars[(x >> 12) & 0xf];
  buf[7] = hex_chars[(x >> 8) & 0xf];
  buf[8] = hex_chars[(x >> 4) & 0xf];
  buf[9] = hex_chars[x & 0xf];
  buf[10] = 0;

  emit(buf);
}
