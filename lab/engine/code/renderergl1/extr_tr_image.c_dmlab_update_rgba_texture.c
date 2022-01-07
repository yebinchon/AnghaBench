
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {int flags; int uploadWidth; int uploadHeight; int uploadMips; int internalFormat; int texnum; int imgName; struct TYPE_4__* next; } ;
typedef TYPE_1__ image_t ;
struct TYPE_5__ {size_t currenttmu; int * currenttextures; } ;


 int GL_TEXTURE_2D ;
 int IMGFLAG_MIPMAP ;
 int IMGFLAG_PICMIP ;
 int Upload32 (unsigned int*,int,int,int ,int,int,int ,int ,int,int *,int*,int*,int *) ;
 long generateHashValue (char const*) ;
 TYPE_3__ glState ;
 TYPE_1__** hashTable ;
 int qfalse ;
 int qglBindTexture (int ,int ) ;
 int strcmp (char const*,int ) ;

bool dmlab_update_rgba_texture( const char* name, int width, int height, const unsigned char* data ) {
 image_t* image;
 long hash = generateHashValue(name);
 for (image=hashTable[hash]; image; image=image->next) {
  if ( !strcmp( name, image->imgName ) ) {
   qboolean picmip = image->flags & IMGFLAG_PICMIP;
   qboolean mipmap = image->flags & IMGFLAG_MIPMAP;
      qboolean capMaxSize = width != image->uploadWidth || height !=image-> uploadHeight;
   glState.currenttextures[glState.currenttmu] = image->texnum;
   qglBindTexture( GL_TEXTURE_2D, image->texnum );
   Upload32( (unsigned *)data, width, height, 0, mipmap, picmip, qfalse, qfalse, capMaxSize,
        &image->internalFormat,
        &image->uploadWidth,
        &image->uploadHeight,
        &image->uploadMips );
   return 1;
  }
 }
 return 0;
}
