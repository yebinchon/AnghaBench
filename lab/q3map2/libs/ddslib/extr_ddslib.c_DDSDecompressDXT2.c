
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ddsBuffer_t ;


 int DDSDecompressDXT3 (int *,int,int,unsigned char*) ;

__attribute__((used)) static int DDSDecompressDXT2( ddsBuffer_t *dds, int width, int height, unsigned char *pixels ){
 int r;



 r = DDSDecompressDXT3( dds, width, height, pixels );


 return r;
}
