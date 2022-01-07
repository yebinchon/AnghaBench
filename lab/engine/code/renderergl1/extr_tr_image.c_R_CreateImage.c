
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int imgType_t ;
typedef int imgFlags_t ;
typedef int image_t ;
typedef int byte ;


 int * R_CreateImageInternal (char const*,int *,int,int,int ,int ,int ,int,int ) ;
 int qtrue ;

image_t *R_CreateImage( const char *name, byte *pic, int width, int height,
  imgType_t type, imgFlags_t flags, int internalFormat ) {
 return R_CreateImageInternal( name, pic, width, height, 0, type, flags, internalFormat, qtrue );
}
