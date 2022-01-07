
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int emit (char*) ;
 char* hex_chars ;

void emit_hex(const void *ptr, size_t len)
{
  const uint8_t *bb = ptr;
  char byte[3];

  byte[2] = 0;

  for (size_t i = 0; i < len; i++)
  {
    byte[0] = hex_chars[(bb[i] >> 4) & 0xf];
    byte[1] = hex_chars[bb[i] & 0xf];
    emit(byte);
  }
}
