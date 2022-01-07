
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int varint ;
typedef int uintmax_t ;


 int memcpy (unsigned char*,unsigned char*,int) ;

int encode_varint(uintmax_t value, unsigned char *buf)
{
 unsigned char varint[16];
 unsigned pos = sizeof(varint) - 1;
 varint[pos] = value & 127;
 while (value >>= 7)
  varint[--pos] = 128 | (--value & 127);
 if (buf)
  memcpy(buf, varint + pos, sizeof(varint) - pos);
 return sizeof(varint) - pos;
}
