
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void blit2_32( byte *src, byte *dst, int spl )
{
 memcpy(dst, src, 8);
 memcpy(dst+spl, src+8, 8);
}
