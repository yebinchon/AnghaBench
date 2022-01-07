
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* color; } ;
typedef TYPE_1__ setColorCommand_t ;
struct TYPE_4__ {int* color2D; } ;


 TYPE_2__ backEnd ;

const void *RB_SetColor( const void *data ) {
 const setColorCommand_t *cmd;

 cmd = (const setColorCommand_t *)data;

 backEnd.color2D[0] = cmd->color[0] * 255;
 backEnd.color2D[1] = cmd->color[1] * 255;
 backEnd.color2D[2] = cmd->color[2] * 255;
 backEnd.color2D[3] = cmd->color[3] * 255;

 return (const void *)(cmd + 1);
}
