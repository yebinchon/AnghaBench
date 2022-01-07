
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int baseAlloc; } ;
struct TYPE_10__ {TYPE_2__ alignOffsetAlloc; TYPE_3__* coders; void* mtc_WasConstructed; int mtc; } ;
struct TYPE_7__ {int vt; } ;
struct TYPE_9__ {void* dec_created; TYPE_1__ alloc; int dec; } ;
typedef TYPE_3__ CLzma2DecMtThread ;
typedef scalar_t__ CLzma2DecMtHandle ;
typedef TYPE_4__ CLzma2DecMt ;


 void* False ;
 int ISzAlloc_Free (int ,scalar_t__) ;
 int Lzma2DecMt_FreeOutBufs (TYPE_4__*) ;
 int Lzma2DecMt_FreeSt (TYPE_4__*) ;
 int Lzma2Dec_FreeProbs (int *,int *) ;
 unsigned int MTDEC__THREADS_MAX ;
 int MtDec_Destruct (int *) ;

void Lzma2DecMt_Destroy(CLzma2DecMtHandle pp)
{
  CLzma2DecMt *p = (CLzma2DecMt *)pp;

  Lzma2DecMt_FreeSt(p);



  if (p->mtc_WasConstructed)
  {
    MtDec_Destruct(&p->mtc);
    p->mtc_WasConstructed = False;
  }
  {
    unsigned i;
    for (i = 0; i < MTDEC__THREADS_MAX; i++)
    {
      CLzma2DecMtThread *t = &p->coders[i];
      if (t->dec_created)
      {

        Lzma2Dec_FreeProbs(&t->dec, &t->alloc.vt);
        t->dec_created = False;
      }
    }
  }
  Lzma2DecMt_FreeOutBufs(p);



  ISzAlloc_Free(p->alignOffsetAlloc.baseAlloc, pp);
}
