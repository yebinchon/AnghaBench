
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
typedef int byte ;
struct TYPE_6__ {int (* Printf ) (int ,char*) ;} ;
struct TYPE_5__ {TYPE_1__** scratchImage; } ;
struct TYPE_4__ {int width; int height; int uploadWidth; int uploadHeight; int texnum; } ;
typedef int GLuint ;


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
 int PRINT_WARNING ;
 int qglTextureImage2DEXT (int ,int ,int ,int ,int,int,int ,int ,int ,int const*) ;
 int qglTextureParameterfEXT (int ,int ,int ,int ) ;
 int qglTextureSubImage2DEXT (int ,int ,int ,int ,int ,int,int,int ,int ,int const*) ;
 TYPE_3__ ri ;
 int stub1 (int ,char*) ;
 TYPE_2__ tr ;

void RE_UploadCinematic (int w, int h, int cols, int rows, const byte *data, int client, qboolean dirty) {
 GLuint texture;

 if (!tr.scratchImage[client])
 {
  ri.Printf(PRINT_WARNING, "RE_UploadCinematic: scratch images not initialized\n");
  return;
 }

 texture = tr.scratchImage[client]->texnum;


 if ( cols != tr.scratchImage[client]->width || rows != tr.scratchImage[client]->height ) {
  tr.scratchImage[client]->width = tr.scratchImage[client]->uploadWidth = cols;
  tr.scratchImage[client]->height = tr.scratchImage[client]->uploadHeight = rows;
  qglTextureImage2DEXT(texture, GL_TEXTURE_2D, 0, GL_RGB8, cols, rows, 0, GL_RGBA, GL_UNSIGNED_BYTE, data);
  qglTextureParameterfEXT(texture, GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
  qglTextureParameterfEXT(texture, GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );
  qglTextureParameterfEXT(texture, GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
  qglTextureParameterfEXT(texture, GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
 } else {
  if (dirty) {


   qglTextureSubImage2DEXT(texture, GL_TEXTURE_2D, 0, 0, 0, cols, rows, GL_RGBA, GL_UNSIGNED_BYTE, data);
  }
 }
}
