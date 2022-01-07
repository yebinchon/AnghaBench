
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int imgType_t ;
typedef int imgFlags_t ;
typedef int image_t ;
typedef int byte ;
typedef int GLenum ;


 int * R_CreateImage2Internal (char const*,int *,int,int,int ,int,int ,int ,int,int ) ;
 int qtrue ;

image_t *R_CreateImage2( const char *name, byte *pic, int width, int height, GLenum picFormat, int numMips, imgType_t type, imgFlags_t flags, int internalFormat ) {
  return R_CreateImage2Internal( name, pic, width, height, picFormat, numMips, type, flags, internalFormat, qtrue );
}
