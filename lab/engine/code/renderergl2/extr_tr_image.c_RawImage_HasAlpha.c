
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
typedef int byte ;


 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean RawImage_HasAlpha(const byte *scan, int numPixels)
{
 int i;

 if (!scan)
  return qtrue;

 for ( i = 0; i < numPixels; i++ )
 {
  if ( scan[i*4 + 3] != 255 )
  {
   return qtrue;
  }
 }

 return qfalse;
}
