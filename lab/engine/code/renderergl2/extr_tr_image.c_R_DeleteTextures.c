
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int texnum; } ;
struct TYPE_3__ {int numImages; TYPE_2__** images; } ;


 int Com_Memset (TYPE_2__**,int ,int) ;
 int GL_BindNullTextures () ;
 int qglDeleteTextures (int,int *) ;
 TYPE_1__ tr ;

void R_DeleteTextures( void ) {
 int i;

 for ( i=0; i<tr.numImages ; i++ ) {
  qglDeleteTextures( 1, &tr.images[i]->texnum );
 }
 Com_Memset( tr.images, 0, sizeof( tr.images ) );

 tr.numImages = 0;

 GL_BindNullTextures();
}
