
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lzma2; int filter; int sb; } ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CLzma2WithFilters ;


 int Lzma2Enc_Destroy (int *) ;
 int SbEncInStream_Free (int *) ;
 int SeqInFilter_Free (int *,int ) ;

__attribute__((used)) static void Lzma2WithFilters_Free(CLzma2WithFilters *p, ISzAllocPtr alloc)
{




  SeqInFilter_Free(&p->filter, alloc);
  if (p->lzma2)
  {
    Lzma2Enc_Destroy(p->lzma2);
    p->lzma2 = ((void*)0);
  }
}
