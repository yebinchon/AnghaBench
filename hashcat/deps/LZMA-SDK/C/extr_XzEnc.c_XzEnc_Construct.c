
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ outBufSize; int ** outBufs; int mtCoder_WasConstructed; int * lzmaf_Items; int xzIndex; } ;
typedef TYPE_1__ CXzEnc ;


 int False ;
 int Lzma2WithFilters_Construct (int *) ;
 unsigned int MTCODER__BLOCKS_MAX ;
 unsigned int MTCODER__THREADS_MAX ;
 int XzEncIndex_Construct (int *) ;

__attribute__((used)) static void XzEnc_Construct(CXzEnc *p)
{
  unsigned i;

  XzEncIndex_Construct(&p->xzIndex);

  for (i = 0; i < MTCODER__THREADS_MAX; i++)
    Lzma2WithFilters_Construct(&p->lzmaf_Items[i]);


  p->mtCoder_WasConstructed = False;
  {
    for (i = 0; i < MTCODER__BLOCKS_MAX; i++)
      p->outBufs[i] = ((void*)0);
    p->outBufSize = 0;
  }

}
