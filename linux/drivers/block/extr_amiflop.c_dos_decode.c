
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long ulong ;


 int dos_decode_byte (int ) ;

__attribute__((used)) static unsigned long dos_decode(unsigned char *data, unsigned short *raw, int len)
{
 int i;

 for (i = 0; i < len; i++)
  *data++=dos_decode_byte(*raw++);
 return ((ulong)raw);
}
