
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int stencilBits; } ;
struct TYPE_5__ {int integer; } ;
struct TYPE_4__ {int whiteImage; } ;


 int CT_TWO_SIDED ;
 int GLS_DEPTHMASK_TRUE ;
 int GLS_DSTBLEND_ZERO ;
 int GLS_SRCBLEND_DST_COLOR ;
 int GL_BindToTMU (int ,int ) ;
 int GL_Cull (int ) ;
 int GL_NOTEQUAL ;
 int GL_QUADS ;
 int GL_STENCIL_TEST ;
 int GL_State (int) ;
 int TB_COLORMAP ;
 TYPE_3__ glConfig ;
 int qglBegin (int ) ;
 int qglColor3f (float,float,float) ;
 int qglColor4f (int,int,int,int) ;
 int qglDisable (int ) ;
 int qglEnable (int ) ;
 int qglEnd () ;
 int qglLoadIdentity () ;
 int qglStencilFunc (int ,int ,int) ;
 int qglVertex3f (int,int,int) ;
 TYPE_2__* r_shadows ;
 TYPE_1__ tr ;

void RB_ShadowFinish( void ) {
}
