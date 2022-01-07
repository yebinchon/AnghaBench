
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mtCoder_WasConstructed; int mtCoder; int * lzmaf_Items; int xzIndex; } ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CXzEnc ;


 scalar_t__ False ;
 int Lzma2WithFilters_Free (int *,int ) ;
 unsigned int MTCODER__THREADS_MAX ;
 int MtCoder_Destruct (int *) ;
 int XzEncIndex_Free (int *,int ) ;
 int XzEnc_FreeOutBufs (TYPE_1__*) ;

__attribute__((used)) static void XzEnc_Free(CXzEnc *p, ISzAllocPtr alloc)
{
  unsigned i;

  XzEncIndex_Free(&p->xzIndex, alloc);

  for (i = 0; i < MTCODER__THREADS_MAX; i++)
    Lzma2WithFilters_Free(&p->lzmaf_Items[i], alloc);


  if (p->mtCoder_WasConstructed)
  {
    MtCoder_Destruct(&p->mtCoder);
    p->mtCoder_WasConstructed = False;
  }
  XzEnc_FreeOutBufs(p);

}
