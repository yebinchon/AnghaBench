
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int byte ;
struct TYPE_6__ {scalar_t__ deviceSupportsGamma; } ;
struct TYPE_5__ {int integer; } ;
struct TYPE_4__ {int (* Hunk_FreeTempMemory ) (int *) ;} ;


 int * RB_ReadPixels (int,int,int,int,size_t*,int*) ;
 int RE_SaveJPG (char*,int ,int,int,int *,int) ;
 int R_GammaCorrect (int *,size_t) ;
 TYPE_3__ glConfig ;
 TYPE_2__* r_screenshotJpegQuality ;
 TYPE_1__ ri ;
 int stub1 (int *) ;

void RB_TakeScreenshotJPEG(int x, int y, int width, int height, char *fileName)
{
 byte *buffer;
 size_t offset = 0, memcount;
 int padlen;

 buffer = RB_ReadPixels(x, y, width, height, &offset, &padlen);
 memcount = (width * 3 + padlen) * height;


 if(glConfig.deviceSupportsGamma)
  R_GammaCorrect(buffer + offset, memcount);

 RE_SaveJPG(fileName, r_screenshotJpegQuality->integer, width, height, buffer + offset, padlen);
 ri.Hunk_FreeTempMemory(buffer);
}
