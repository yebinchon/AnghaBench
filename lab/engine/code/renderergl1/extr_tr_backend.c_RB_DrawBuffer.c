
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffer; } ;
typedef TYPE_1__ drawBufferCommand_t ;
struct TYPE_4__ {scalar_t__ integer; } ;


 int GL_COLOR_BUFFER_BIT ;
 int GL_DEPTH_BUFFER_BIT ;
 int qglClear (int) ;
 int qglClearColor (int,int ,double,int) ;
 int qglDrawBuffer (int ) ;
 TYPE_2__* r_clear ;

const void *RB_DrawBuffer( const void *data ) {
 const drawBufferCommand_t *cmd;

 cmd = (const drawBufferCommand_t *)data;

 qglDrawBuffer( cmd->buffer );


 if ( r_clear->integer ) {
  qglClearColor( 1, 0, 0.5, 1 );
  qglClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );
 }

 return (const void *)(cmd + 1);
}
