
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inBufSize_ST; int outStep_ST; int numThreads; int inBufSize_MT; int outBlockMax; int inBlockMax; } ;
typedef TYPE_1__ CLzma2DecMtProps ;


 int LZMA2DECMT_OUT_BLOCK_MAX_DEFAULT ;

void Lzma2DecMtProps_Init(CLzma2DecMtProps *p)
{
  p->inBufSize_ST = 1 << 20;
  p->outStep_ST = 1 << 20;


  p->numThreads = 1;
  p->inBufSize_MT = 1 << 18;
  p->outBlockMax = LZMA2DECMT_OUT_BLOCK_MAX_DEFAULT;
  p->inBlockMax = p->outBlockMax + p->outBlockMax / 16;

}
