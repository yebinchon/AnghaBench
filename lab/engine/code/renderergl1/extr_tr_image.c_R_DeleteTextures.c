
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int texnum; } ;
struct TYPE_5__ {TYPE_3__** currenttextures; } ;
struct TYPE_4__ {int numImages; TYPE_3__** images; } ;


 int Com_Memset (TYPE_3__**,int ,int) ;
 int GL_SelectTexture (int) ;
 int GL_TEXTURE_2D ;
 TYPE_2__ glState ;
 scalar_t__ qglActiveTextureARB ;
 int qglBindTexture (int ,int ) ;
 int qglDeleteTextures (int,int *) ;
 TYPE_1__ tr ;

void R_DeleteTextures( void ) {
 int i;

 for ( i=0; i<tr.numImages ; i++ ) {
  qglDeleteTextures( 1, &tr.images[i]->texnum );
 }
 Com_Memset( tr.images, 0, sizeof( tr.images ) );

 tr.numImages = 0;

 Com_Memset( glState.currenttextures, 0, sizeof( glState.currenttextures ) );
 if ( qglActiveTextureARB ) {
  GL_SelectTexture( 1 );
  qglBindTexture( GL_TEXTURE_2D, 0 );
  GL_SelectTexture( 0 );
  qglBindTexture( GL_TEXTURE_2D, 0 );
 } else {
  qglBindTexture( GL_TEXTURE_2D, 0 );
 }
}
