
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int image_t ;
typedef int byte ;
typedef int GLenum ;


 int Upload32 (int *,int,int,int,int,int ,int ,int *,int ,int ) ;
 int qfalse ;

void R_UpdateSubImage( image_t *image, byte *pic, int x, int y, int width, int height, GLenum picFormat )
{
 Upload32(pic, x, y, width, height, picFormat, 0, image, qfalse, qfalse);
}
