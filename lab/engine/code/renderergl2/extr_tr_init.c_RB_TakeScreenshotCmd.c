
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fileName; int height; int width; int y; int x; scalar_t__ jpeg; } ;
typedef TYPE_1__ screenshotCommand_t ;
struct TYPE_4__ {scalar_t__ numIndexes; } ;


 int RB_EndSurface () ;
 int RB_TakeScreenshot (int ,int ,int ,int ,int ) ;
 int RB_TakeScreenshotJPEG (int ,int ,int ,int ,int ) ;
 TYPE_2__ tess ;

const void *RB_TakeScreenshotCmd( const void *data ) {
 const screenshotCommand_t *cmd;

 cmd = (const screenshotCommand_t *)data;


 if(tess.numIndexes)
  RB_EndSurface();

 if (cmd->jpeg)
  RB_TakeScreenshotJPEG( cmd->x, cmd->y, cmd->width, cmd->height, cmd->fileName);
 else
  RB_TakeScreenshot( cmd->x, cmd->y, cmd->width, cmd->height, cmd->fileName);

 return (const void *)(cmd + 1);
}
