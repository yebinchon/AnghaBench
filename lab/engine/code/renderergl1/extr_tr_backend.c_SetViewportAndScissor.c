
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int viewportHeight; int viewportWidth; int viewportY; int viewportX; int projectionMatrix; } ;
struct TYPE_4__ {TYPE_1__ viewParms; } ;


 int GL_MODELVIEW ;
 int GL_PROJECTION ;
 TYPE_2__ backEnd ;
 int qglLoadMatrixf (int ) ;
 int qglMatrixMode (int ) ;
 int qglScissor (int ,int ,int ,int ) ;
 int qglViewport (int ,int ,int ,int ) ;

__attribute__((used)) static void SetViewportAndScissor( void ) {
 qglMatrixMode(GL_PROJECTION);
 qglLoadMatrixf( backEnd.viewParms.projectionMatrix );
 qglMatrixMode(GL_MODELVIEW);


 qglViewport( backEnd.viewParms.viewportX, backEnd.viewParms.viewportY,
  backEnd.viewParms.viewportWidth, backEnd.viewParms.viewportHeight );
 qglScissor( backEnd.viewParms.viewportX, backEnd.viewParms.viewportY,
  backEnd.viewParms.viewportWidth, backEnd.viewParms.viewportHeight );
}
