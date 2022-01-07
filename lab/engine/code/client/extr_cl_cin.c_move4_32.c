
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void move4_32( byte *src, byte *dst, int spl )
{
 int i;

 for(i = 0; i < 4; ++i)
 {
  memcpy(dst, src, 16);
  src += spl;
  dst += spl;
 }
}
