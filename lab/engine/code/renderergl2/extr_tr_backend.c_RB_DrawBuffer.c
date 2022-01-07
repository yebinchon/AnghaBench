
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int buffer; } ;
typedef TYPE_1__ drawBufferCommand_t ;
struct TYPE_8__ {scalar_t__ framebufferObject; } ;
struct TYPE_7__ {scalar_t__ integer; } ;
struct TYPE_6__ {scalar_t__ numIndexes; } ;


 int FBO_Bind (int *) ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_DEPTH_BUFFER_BIT ;
 int RB_EndSurface () ;
 TYPE_4__ glRefConfig ;
 int qglClear (int) ;
 int qglClearColor (int,int ,double,int) ;
 int qglDrawBuffer (int ) ;
 TYPE_3__* r_clear ;
 TYPE_2__ tess ;

const void *RB_DrawBuffer( const void *data ) {
 const drawBufferCommand_t *cmd;

 cmd = (const drawBufferCommand_t *)data;


 if(tess.numIndexes)
  RB_EndSurface();

 if (glRefConfig.framebufferObject)
  FBO_Bind(((void*)0));

 qglDrawBuffer( cmd->buffer );


 if ( r_clear->integer ) {
  qglClearColor( 1, 0, 0.5, 1 );
  qglClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );
 }

 return (const void *)(cmd + 1);
}
