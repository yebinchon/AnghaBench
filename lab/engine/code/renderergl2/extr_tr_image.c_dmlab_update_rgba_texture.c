
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int texnum; int imgName; struct TYPE_4__* next; } ;
typedef TYPE_1__ image_t ;


 int GL_RGBA8 ;
 int GL_TEXTURE_2D ;
 int Upload32 (unsigned char*,int ,int ,int,int,int ,int,TYPE_1__*,int ,int ) ;
 long generateHashValue (char const*) ;
 TYPE_1__** hashTable ;
 int qfalse ;
 int qglBindTexture (int ,int ) ;
 int strcmp (char const*,int ) ;

bool dmlab_update_rgba_texture( const char* name, int width, int height, const unsigned char* data ) {
 image_t* image;
 long hash = generateHashValue(name);
 for (image=hashTable[hash]; image; image=image->next) {
  if ( !strcmp( name, image->imgName ) ) {
   qglBindTexture( GL_TEXTURE_2D, image->texnum );
   Upload32( (unsigned char*)data, 0, 0, width, height,
        GL_RGBA8,
        1,
        image,
        qfalse,
        qfalse );
   return 1;
  }
 }
 return 0;
}
