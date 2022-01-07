
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int msec; } ;
struct TYPE_6__ {TYPE_1__ pc; } ;
struct TYPE_5__ {int (* Milliseconds ) () ;} ;


 void* PADP (void const*,int) ;
 void* RB_ClearDepth (void const*) ;
 void* RB_ColorMask (void const*) ;
 void* RB_DrawBuffer (void const*) ;
 void* RB_DrawSurfs (void const*) ;
 void* RB_SetColor (void const*) ;
 void* RB_StretchPic (void const*) ;
 void* RB_SwapBuffers (void const*) ;
 void* RB_TakeScreenshotCmd (void const*) ;
 void* RB_TakeVideoFrameCmd (void const*) ;
 TYPE_3__ backEnd ;
 TYPE_2__ ri ;
 int stub1 () ;
 int stub2 () ;

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
  case 134:
   data = RB_DrawSurfs( data );
   break;
  case 135:
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
  case 136:
   data = RB_ColorMask(data);
   break;
  case 137:
   data = RB_ClearDepth(data);
   break;
  case 133:
  default:

   t2 = ri.Milliseconds ();
   backEnd.pc.msec = t2 - t1;
   return;
  }
 }

}
