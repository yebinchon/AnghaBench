
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fileName; int height; int width; int y; int x; scalar_t__ jpeg; } ;
typedef TYPE_1__ screenshotCommand_t ;


 int RB_TakeScreenshot (int ,int ,int ,int ,int ) ;
 int RB_TakeScreenshotJPEG (int ,int ,int ,int ,int ) ;

const void *RB_TakeScreenshotCmd( const void *data ) {
 const screenshotCommand_t *cmd;

 cmd = (const screenshotCommand_t *)data;

 if (cmd->jpeg)
  RB_TakeScreenshotJPEG( cmd->x, cmd->y, cmd->width, cmd->height, cmd->fileName);
 else
  RB_TakeScreenshot( cmd->x, cmd->y, cmd->width, cmd->height, cmd->fileName);

 return (const void *)(cmd + 1);
}
