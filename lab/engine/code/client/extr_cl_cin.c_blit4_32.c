
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int memmove (int *,int *,int) ;

__attribute__((used)) static void blit4_32( byte *src, byte *dst, int spl )
{
 int i;

 for(i = 0; i < 4; ++i)
 {
  memmove(dst, src, 16);
  src += 16;
  dst += spl;
 }
}
