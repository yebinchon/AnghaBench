
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
typedef int byte ;
struct TYPE_8__ {scalar_t__ integer; } ;
struct TYPE_7__ {int (* Milliseconds ) () ;int (* Printf ) (int ,char*,int,int,int) ;int (* Error ) (int ,char*,int,int) ;} ;
struct TYPE_6__ {scalar_t__ numIndexes; } ;
struct TYPE_5__ {int identityLight; int * scratchImage; int registered; } ;


 int ERR_DROP ;
 int GL_Bind (int ) ;
 int GL_QUADS ;
 int PRINT_ALL ;
 int RB_EndSurface () ;
 int RB_SetGL2D () ;
 int RE_UploadCinematic (int,int,int,int,int const*,int,int ) ;
 int R_IssuePendingRenderCommands () ;
 int qglBegin (int ) ;
 int qglColor3f (int ,int ,int ) ;
 int qglEnd () ;
 int qglFinish () ;
 int qglTexCoord2f (float,int) ;
 int qglVertex2f (int,int) ;
 TYPE_4__* r_speeds ;
 TYPE_3__ ri ;
 int stub1 () ;
 int stub2 (int ,char*,int,int) ;
 int stub3 () ;
 int stub4 (int ,char*,int,int,int) ;
 TYPE_2__ tess ;
 TYPE_1__ tr ;

void RE_StretchRaw (int x, int y, int w, int h, int cols, int rows, const byte *data, int client, qboolean dirty) {
 int i, j;
 int start, end;

 if ( !tr.registered ) {
  return;
 }
 R_IssuePendingRenderCommands();

 if ( tess.numIndexes ) {
  RB_EndSurface();
 }


 qglFinish();

 start = 0;
 if ( r_speeds->integer ) {
  start = ri.Milliseconds();
 }


 for ( i = 0 ; ( 1 << i ) < cols ; i++ ) {
 }
 for ( j = 0 ; ( 1 << j ) < rows ; j++ ) {
 }
 if ( ( 1 << i ) != cols || ( 1 << j ) != rows) {
  ri.Error (ERR_DROP, "Draw_StretchRaw: size not a power of 2: %i by %i", cols, rows);
 }

 RE_UploadCinematic (w, h, cols, rows, data, client, dirty);
 GL_Bind( tr.scratchImage[client] );

 if ( r_speeds->integer ) {
  end = ri.Milliseconds();
  ri.Printf( PRINT_ALL, "qglTexSubImage2D %i, %i: %i msec\n", cols, rows, end - start );
 }

 RB_SetGL2D();

 qglColor3f( tr.identityLight, tr.identityLight, tr.identityLight );

 qglBegin (GL_QUADS);
 qglTexCoord2f ( 0.5f / cols, 0.5f / rows );
 qglVertex2f (x, y);
 qglTexCoord2f ( ( cols - 0.5f ) / cols , 0.5f / rows );
 qglVertex2f (x+w, y);
 qglTexCoord2f ( ( cols - 0.5f ) / cols, ( rows - 0.5f ) / rows );
 qglVertex2f (x+w, y+h);
 qglTexCoord2f ( 0.5f / cols, ( rows - 0.5f ) / rows );
 qglVertex2f (x, y+h);
 qglEnd ();
}
