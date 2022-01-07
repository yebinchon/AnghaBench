
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_8__ {int buffWidth; int buffHeight; } ;
struct TYPE_7__ {int value; } ;
struct TYPE_6__ {int value; } ;
struct TYPE_5__ {int (* Cvar_Set ) (char*,char*) ;} ;
typedef int GLubyte ;


 int GLimp_CommonPostInit () ;
 int GLimp_CommonPreInit () ;
 int OSMESA_RGBA ;
 int OSMesaCreateContextExt (int ,int,int ,int ,int *) ;
 int Sys_Error (char*) ;
 int calloc (int,int) ;
 TYPE_4__ glConfig ;
 int osmesa_ctx ;
 int osmesa_frame_buffer ;
 TYPE_3__* r_colorbits ;
 TYPE_2__* r_depthbits ;
 TYPE_1__ ri ;
 int stub1 (char*,char*) ;

void GLimp_Init(qboolean coreContext) {
  r_colorbits->value = 16;
  r_depthbits->value = 24;
  GLimp_CommonPreInit();

  osmesa_ctx =
      OSMesaCreateContextExt(OSMESA_RGBA, r_depthbits->value, 0, 0, ((void*)0));
  if (!osmesa_ctx) {
    Sys_Error("OSMesaCreateContext failed!");
  }


  osmesa_frame_buffer =
      calloc(glConfig.buffWidth * glConfig.buffHeight * 4, sizeof(GLubyte));
  if (!osmesa_frame_buffer) {
    Sys_Error("Alloc image buffer failed!");
  }



  ri.Cvar_Set("r_drawBuffer", "GL_FRONT");

  GLimp_CommonPostInit();
}
