
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float x; float y; float w; float h; float s1; float t1; float s2; float t2; int shader; int commandId; } ;
typedef TYPE_1__ stretchPicCommand_t ;
typedef int qhandle_t ;
struct TYPE_5__ {int registered; } ;


 int RC_STRETCH_PIC ;
 TYPE_1__* R_GetCommandBuffer (int) ;
 int R_GetShaderByHandle (int ) ;
 TYPE_2__ tr ;

void RE_StretchPic ( float x, float y, float w, float h,
       float s1, float t1, float s2, float t2, qhandle_t hShader ) {
 stretchPicCommand_t *cmd;

  if (!tr.registered) {
    return;
  }
 cmd = R_GetCommandBuffer( sizeof( *cmd ) );
 if ( !cmd ) {
  return;
 }
 cmd->commandId = RC_STRETCH_PIC;
 cmd->shader = R_GetShaderByHandle( hShader );
 cmd->x = x;
 cmd->y = y;
 cmd->w = w;
 cmd->h = h;
 cmd->s1 = s1;
 cmd->t1 = t1;
 cmd->s2 = s2;
 cmd->t2 = t2;
}
