
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;


 int dos_encode_byte (int ) ;

__attribute__((used)) static void dos_encode_block(ushort *dest, unsigned char *src, int len)
{
 int i;

 for (i = 0; i < len; i++) {
  *dest=dos_encode_byte(*src++);
  *dest|=((dest[-1]&1)||(*dest&0x4000))? 0: 0x8000;
  dest++;
 }
}
