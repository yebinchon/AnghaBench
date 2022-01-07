
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int msec; } ;
struct TYPE_8__ {TYPE_1__ pc; } ;
struct TYPE_7__ {int (* Milliseconds ) () ;} ;
struct TYPE_6__ {int numIndexes; } ;


 void* PADP (void const*,int) ;
 void* RB_CapShadowMap (void const*) ;
 void* RB_ClearDepth (void const*) ;
 void* RB_ColorMask (void const*) ;
 void* RB_DrawBuffer (void const*) ;
 void* RB_DrawSurfs (void const*) ;
 int RB_EndSurface () ;
 void* RB_ExportCubemaps (void const*) ;
 void* RB_PostProcess (void const*) ;
 void* RB_SetColor (void const*) ;
 void* RB_StretchPic (void const*) ;
 void* RB_SwapBuffers (void const*) ;
 void* RB_TakeScreenshotCmd (void const*) ;
 void* RB_TakeVideoFrameCmd (void const*) ;
 TYPE_4__ backEnd ;
 TYPE_3__ ri ;
 int stub1 () ;
 int stub2 () ;
 TYPE_2__ tess ;

void RB_ExecuteRenderCommands( const void *data ) {
 int t1, t2;

 t1 = ri.Milliseconds ();

 while ( 1 ) {
  data = PADP(data, sizeof(void *));

  switch ( *(const int *)data ) {
  case 131:
   data = RB_SetColor( data );
   break;
  case 130:
   data = RB_StretchPic( data );
   break;
  case 136:
   data = RB_DrawSurfs( data );
   break;
  case 137:
   data = RB_DrawBuffer( data );
   break;
  case 129:
   data = RB_SwapBuffers( data );
   break;
  case 132:
   data = RB_TakeScreenshotCmd( data );
   break;
  case 128:
   data = RB_TakeVideoFrameCmd( data );
   break;
  case 138:
   data = RB_ColorMask(data);
   break;
  case 139:
   data = RB_ClearDepth(data);
   break;
  case 140:
   data = RB_CapShadowMap(data);
   break;
  case 133:
   data = RB_PostProcess(data);
   break;
  case 134:
   data = RB_ExportCubemaps(data);
   break;
  case 135:
  default:

   if(tess.numIndexes)
    RB_EndSurface();


   t2 = ri.Milliseconds ();
   backEnd.pc.msec = t2 - t1;
   return;
  }
 }

}
