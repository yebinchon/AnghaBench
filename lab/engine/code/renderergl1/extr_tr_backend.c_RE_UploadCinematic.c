
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
typedef int byte ;
struct TYPE_4__ {int width; int height; int uploadWidth; int uploadHeight; } ;
struct TYPE_3__ {TYPE_2__** scratchImage; } ;


 int GL_Bind (TYPE_2__*) ;
 int GL_CLAMP_TO_EDGE ;
 int GL_LINEAR ;
 int GL_RGB8 ;
 int GL_RGBA ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_TEXTURE_WRAP_S ;
 int GL_TEXTURE_WRAP_T ;
 int GL_UNSIGNED_BYTE ;
 int qglTexImage2D (int ,int ,int ,int,int,int ,int ,int ,int const*) ;
 int qglTexParameterf (int ,int ,int ) ;
 int qglTexSubImage2D (int ,int ,int ,int ,int,int,int ,int ,int const*) ;
 TYPE_1__ tr ;

void RE_UploadCinematic (int w, int h, int cols, int rows, const byte *data, int client, qboolean dirty) {

 GL_Bind( tr.scratchImage[client] );


 if ( cols != tr.scratchImage[client]->width || rows != tr.scratchImage[client]->height ) {
  tr.scratchImage[client]->width = tr.scratchImage[client]->uploadWidth = cols;
  tr.scratchImage[client]->height = tr.scratchImage[client]->uploadHeight = rows;
  qglTexImage2D( GL_TEXTURE_2D, 0, GL_RGB8, cols, rows, 0, GL_RGBA, GL_UNSIGNED_BYTE, data );
  qglTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );
  qglTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );
  qglTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE );
  qglTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE );
 } else {
  if (dirty) {


   qglTexSubImage2D( GL_TEXTURE_2D, 0, 0, 0, cols, rows, GL_RGBA, GL_UNSIGNED_BYTE, data );
  }
 }
}
