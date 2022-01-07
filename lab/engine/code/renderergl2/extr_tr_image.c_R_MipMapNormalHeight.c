
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* vec3_t ;
typedef scalar_t__ qboolean ;
typedef int byte ;


 int FloatToOffsetByte (scalar_t__) ;
 int const MAX (int const,int const) ;
 scalar_t__ OffsetByteToFloat (int const) ;
 int VectorNormalizeFast (scalar_t__*) ;

__attribute__((used)) static void R_MipMapNormalHeight (const byte *in, byte *out, int width, int height, qboolean swizzle)
{
 int i, j;
 int row;
 int sx = swizzle ? 3 : 0;
 int sa = swizzle ? 0 : 3;

 if ( width == 1 && height == 1 ) {
  return;
 }

 row = width * 4;
 width >>= 1;
 height >>= 1;

 for (i=0 ; i<height ; i++, in+=row) {
  for (j=0 ; j<width ; j++, out+=4, in+=8) {
   vec3_t v;

   v[0] = OffsetByteToFloat(in[sx ]);
   v[1] = OffsetByteToFloat(in[ 1]);
   v[2] = OffsetByteToFloat(in[ 2]);

   v[0] += OffsetByteToFloat(in[sx +4]);
   v[1] += OffsetByteToFloat(in[ 5]);
   v[2] += OffsetByteToFloat(in[ 6]);

   v[0] += OffsetByteToFloat(in[sx+row ]);
   v[1] += OffsetByteToFloat(in[ row+1]);
   v[2] += OffsetByteToFloat(in[ row+2]);

   v[0] += OffsetByteToFloat(in[sx+row+4]);
   v[1] += OffsetByteToFloat(in[ row+5]);
   v[2] += OffsetByteToFloat(in[ row+6]);

   VectorNormalizeFast(v);






   out[sx] = FloatToOffsetByte(v[0]);
   out[1 ] = FloatToOffsetByte(v[1]);
   out[2 ] = FloatToOffsetByte(v[2]);
   out[sa] = MAX(MAX(in[sa], in[sa+4]), MAX(in[sa+row], in[sa+row+4]));
  }
 }
}
