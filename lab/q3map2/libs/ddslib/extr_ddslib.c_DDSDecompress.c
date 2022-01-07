
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ddsPF_t ;
typedef int ddsBuffer_t ;


 int DDSDecompressARGB8888 (int *,int,int,unsigned char*) ;
 int DDSDecompressDXT1 (int *,int,int,unsigned char*) ;
 int DDSDecompressDXT2 (int *,int,int,unsigned char*) ;
 int DDSDecompressDXT3 (int *,int,int,unsigned char*) ;
 int DDSDecompressDXT4 (int *,int,int,unsigned char*) ;
 int DDSDecompressDXT5 (int *,int,int,unsigned char*) ;
 int DDSGetInfo (int *,int*,int*,int*) ;







 int memset (unsigned char*,int,int) ;

int DDSDecompress( ddsBuffer_t *dds, unsigned char *pixels ){
 int width, height, r;
 ddsPF_t pf;



 r = DDSGetInfo( dds, &width, &height, &pf );
 if ( r ) {
  return r;
 }


 switch ( pf )
 {
 case 134:

  r = DDSDecompressARGB8888( dds, width, height, pixels );
  break;

 case 133:
  r = DDSDecompressDXT1( dds, width, height, pixels );
  break;

 case 132:
  r = DDSDecompressDXT2( dds, width, height, pixels );
  break;

 case 131:
  r = DDSDecompressDXT3( dds, width, height, pixels );
  break;

 case 130:
  r = DDSDecompressDXT4( dds, width, height, pixels );
  break;

 case 129:
  r = DDSDecompressDXT5( dds, width, height, pixels );
  break;

 default:
 case 128:
  memset( pixels, 0xFF, width * height * 4 );
  r = -1;
  break;
 }


 return r;
}
