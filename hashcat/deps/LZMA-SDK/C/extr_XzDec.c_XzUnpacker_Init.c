
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ outDataWritten; void* decodeToStreamSignature; void* parseMode; scalar_t__ decodeOnlyOneBlock; scalar_t__ padSize; scalar_t__ numTotalBlocks; scalar_t__ numFinishedStreams; scalar_t__ numStartedStreams; scalar_t__ pos; int state; } ;
typedef TYPE_1__ CXzUnpacker ;


 void* False ;
 int XZ_STATE_STREAM_HEADER ;

void XzUnpacker_Init(CXzUnpacker *p)
{
  p->state = XZ_STATE_STREAM_HEADER;
  p->pos = 0;
  p->numStartedStreams = 0;
  p->numFinishedStreams = 0;
  p->numTotalBlocks = 0;
  p->padSize = 0;
  p->decodeOnlyOneBlock = 0;

  p->parseMode = False;
  p->decodeToStreamSignature = False;



  p->outDataWritten = 0;
}
