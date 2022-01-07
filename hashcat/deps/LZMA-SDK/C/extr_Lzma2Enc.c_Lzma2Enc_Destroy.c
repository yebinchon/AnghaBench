
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int alloc; int * tempBufLzma; scalar_t__ mtCoder_WasConstructed; int mtCoder; int allocBig; TYPE_1__* coders; } ;
struct TYPE_4__ {int * enc; } ;
typedef TYPE_1__ CLzma2EncInt ;
typedef int * CLzma2EncHandle ;
typedef TYPE_2__ CLzma2Enc ;


 scalar_t__ False ;
 int ISzAlloc_Free (int ,int *) ;
 int Lzma2Enc_FreeOutBufs (TYPE_2__*) ;
 int LzmaEnc_Destroy (int *,int ,int ) ;
 unsigned int MTCODER__THREADS_MAX ;
 int MtCoder_Destruct (int *) ;

void Lzma2Enc_Destroy(CLzma2EncHandle pp)
{
  CLzma2Enc *p = (CLzma2Enc *)pp;
  unsigned i;
  for (i = 0; i < MTCODER__THREADS_MAX; i++)
  {
    CLzma2EncInt *t = &p->coders[i];
    if (t->enc)
    {
      LzmaEnc_Destroy(t->enc, p->alloc, p->allocBig);
      t->enc = ((void*)0);
    }
  }



  if (p->mtCoder_WasConstructed)
  {
    MtCoder_Destruct(&p->mtCoder);
    p->mtCoder_WasConstructed = False;
  }
  Lzma2Enc_FreeOutBufs(p);


  ISzAlloc_Free(p->alloc, p->tempBufLzma);
  p->tempBufLzma = ((void*)0);

  ISzAlloc_Free(p->alloc, pp);
}
