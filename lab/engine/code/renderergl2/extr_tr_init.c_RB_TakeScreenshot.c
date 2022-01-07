
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* byte ;
struct TYPE_4__ {scalar_t__ deviceSupportsGamma; } ;
struct TYPE_3__ {int (* Hunk_FreeTempMemory ) (void**) ;int (* FS_WriteFile ) (char*,void**,size_t) ;} ;


 int Com_Memset (void**,int ,int) ;
 void** RB_ReadPixels (int,int,int,int,size_t*,int*) ;
 int R_GammaCorrect (void**,size_t) ;
 TYPE_2__ glConfig ;
 TYPE_1__ ri ;
 int stub1 (char*,void**,size_t) ;
 int stub2 (void**) ;

void RB_TakeScreenshot(int x, int y, int width, int height, char *fileName)
{
 byte *allbuf, *buffer;
 byte *srcptr, *destptr;
 byte *endline, *endmem;
 byte temp;

 int linelen, padlen;
 size_t offset = 18, memcount;

 allbuf = RB_ReadPixels(x, y, width, height, &offset, &padlen);
 buffer = allbuf + offset - 18;

 Com_Memset (buffer, 0, 18);
 buffer[2] = 2;
 buffer[12] = width & 255;
 buffer[13] = width >> 8;
 buffer[14] = height & 255;
 buffer[15] = height >> 8;
 buffer[16] = 24;


 linelen = width * 3;

 srcptr = destptr = allbuf + offset;
 endmem = srcptr + (linelen + padlen) * height;

 while(srcptr < endmem)
 {
  endline = srcptr + linelen;

  while(srcptr < endline)
  {
   temp = srcptr[0];
   *destptr++ = srcptr[2];
   *destptr++ = srcptr[1];
   *destptr++ = temp;

   srcptr += 3;
  }


  srcptr += padlen;
 }

 memcount = linelen * height;


 if(glConfig.deviceSupportsGamma)
  R_GammaCorrect(allbuf + offset, memcount);

 ri.FS_WriteFile(fileName, buffer, memcount + 18);

 ri.Hunk_FreeTempMemory(allbuf);
}
