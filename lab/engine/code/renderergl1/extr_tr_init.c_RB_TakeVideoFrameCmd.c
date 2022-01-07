
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int width; int height; void** encodeBuffer; scalar_t__ motionJpeg; int captureBuffer; } ;
typedef TYPE_1__ videoFrameCommand_t ;
typedef void* byte ;
struct TYPE_8__ {scalar_t__ deviceSupportsGamma; } ;
struct TYPE_7__ {int integer; } ;
struct TYPE_6__ {int (* CL_WriteAVIVideoFrame ) (void**,int) ;} ;
typedef int GLint ;


 int AVI_LINE_PADDING ;
 int Com_Memset (void**,char,int) ;
 int GL_PACK_ALIGNMENT ;
 int GL_RGB ;
 int GL_UNSIGNED_BYTE ;
 int PAD (size_t,int ) ;
 void** PADP (int ,int ) ;
 size_t RE_SaveJPGToBuffer (void**,size_t,int ,int,size_t,void**,int) ;
 int R_GammaCorrect (void**,size_t) ;
 TYPE_4__ glConfig ;
 int qglGetIntegerv (int ,int *) ;
 int qglReadPixels (int ,int ,int,int,int ,int ,void**) ;
 TYPE_3__* r_aviMotionJpegQuality ;
 TYPE_2__ ri ;
 int stub1 (void**,size_t) ;
 int stub2 (void**,int) ;

const void *RB_TakeVideoFrameCmd( const void *data )
{
 const videoFrameCommand_t *cmd;
 byte *cBuf;
 size_t memcount, linelen;
 int padwidth, avipadwidth, padlen, avipadlen;
 GLint packAlign;

 cmd = (const videoFrameCommand_t *)data;

 qglGetIntegerv(GL_PACK_ALIGNMENT, &packAlign);

 linelen = cmd->width * 3;


 padwidth = PAD(linelen, packAlign);
 padlen = padwidth - linelen;

 avipadwidth = PAD(linelen, AVI_LINE_PADDING);
 avipadlen = avipadwidth - linelen;

 cBuf = PADP(cmd->captureBuffer, packAlign);

 qglReadPixels(0, 0, cmd->width, cmd->height, GL_RGB,
  GL_UNSIGNED_BYTE, cBuf);

 memcount = padwidth * cmd->height;


 if(glConfig.deviceSupportsGamma)
  R_GammaCorrect(cBuf, memcount);

 if(cmd->motionJpeg)
 {
  memcount = RE_SaveJPGToBuffer(cmd->encodeBuffer, linelen * cmd->height,
   r_aviMotionJpegQuality->integer,
   cmd->width, cmd->height, cBuf, padlen);
  ri.CL_WriteAVIVideoFrame(cmd->encodeBuffer, memcount);
 }
 else
 {
  byte *lineend, *memend;
  byte *srcptr, *destptr;

  srcptr = cBuf;
  destptr = cmd->encodeBuffer;
  memend = srcptr + memcount;


  while(srcptr < memend)
  {
   lineend = srcptr + linelen;
   while(srcptr < lineend)
   {
    *destptr++ = srcptr[2];
    *destptr++ = srcptr[1];
    *destptr++ = srcptr[0];
    srcptr += 3;
   }

   Com_Memset(destptr, '\0', avipadlen);
   destptr += avipadlen;

   srcptr += padlen;
  }

  ri.CL_WriteAVIVideoFrame(cmd->encodeBuffer, avipadwidth * cmd->height);
 }

 return (const void *)(cmd + 1);
}
