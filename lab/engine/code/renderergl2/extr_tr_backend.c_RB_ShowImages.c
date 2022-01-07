
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_7__ {float uploadWidth; float uploadHeight; } ;
typedef TYPE_1__ image_t ;
struct TYPE_11__ {int vidWidth; int vidHeight; } ;
struct TYPE_10__ {int integer; } ;
struct TYPE_9__ {int (* Milliseconds ) () ;int (* Printf ) (int ,char*,int) ;} ;
struct TYPE_8__ {int numImages; TYPE_1__** images; } ;


 int GL_BindToTMU (TYPE_1__*,int ) ;
 int GL_COLOR_BUFFER_BIT ;
 int PRINT_ALL ;
 int RB_InstantQuad (int *) ;
 int RB_SetGL2D () ;
 int TB_COLORMAP ;
 int VectorSet4 (int ,float,float,int ,int) ;
 TYPE_5__ glConfig ;
 int qglClear (int ) ;
 int qglFinish () ;
 TYPE_4__* r_showImages ;
 TYPE_3__ ri ;
 int stub1 () ;
 int stub2 () ;
 int stub3 (int ,char*,int) ;
 TYPE_2__ tr ;

void RB_ShowImages( void ) {
 int i;
 image_t *image;
 float x, y, w, h;
 int start, end;

 RB_SetGL2D();

 qglClear( GL_COLOR_BUFFER_BIT );

 qglFinish();

 start = ri.Milliseconds();

 for ( i=0 ; i<tr.numImages ; i++ ) {
  image = tr.images[i];

  w = glConfig.vidWidth / 20;
  h = glConfig.vidHeight / 15;
  x = i % 20 * w;
  y = i / 20 * h;


  if ( r_showImages->integer == 2 ) {
   w *= image->uploadWidth / 512.0f;
   h *= image->uploadHeight / 512.0f;
  }

  {
   vec4_t quadVerts[4];

   GL_BindToTMU(image, TB_COLORMAP);

   VectorSet4(quadVerts[0], x, y, 0, 1);
   VectorSet4(quadVerts[1], x + w, y, 0, 1);
   VectorSet4(quadVerts[2], x + w, y + h, 0, 1);
   VectorSet4(quadVerts[3], x, y + h, 0, 1);

   RB_InstantQuad(quadVerts);
  }
 }

 qglFinish();

 end = ri.Milliseconds();
 ri.Printf( PRINT_ALL, "%i msec to draw all images\n", end - start );

}
