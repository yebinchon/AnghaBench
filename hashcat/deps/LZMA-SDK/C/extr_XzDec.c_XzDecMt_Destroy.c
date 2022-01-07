
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int baseAlloc; } ;
struct TYPE_8__ {TYPE_1__ alignOffsetAlloc; TYPE_2__* coders; void* mtc_WasConstructed; int mtc; } ;
struct TYPE_7__ {void* dec_created; int dec; } ;
typedef TYPE_2__ CXzDecMtThread ;
typedef scalar_t__ CXzDecMtHandle ;
typedef TYPE_3__ CXzDecMt ;


 void* False ;
 int ISzAlloc_Free (int ,scalar_t__) ;
 unsigned int MTDEC__THREADS_MAX ;
 int MtDec_Destruct (int *) ;
 int XzDecMt_FreeOutBufs (TYPE_3__*) ;
 int XzDecMt_FreeSt (TYPE_3__*) ;
 int XzUnpacker_Free (int *) ;

void XzDecMt_Destroy(CXzDecMtHandle pp)
{
  CXzDecMt *p = (CXzDecMt *)pp;

  XzDecMt_FreeSt(p);



  if (p->mtc_WasConstructed)
  {
    MtDec_Destruct(&p->mtc);
    p->mtc_WasConstructed = False;
  }
  {
    unsigned i;
    for (i = 0; i < MTDEC__THREADS_MAX; i++)
    {
      CXzDecMtThread *t = &p->coders[i];
      if (t->dec_created)
      {

        XzUnpacker_Free(&t->dec);
        t->dec_created = False;
      }
    }
  }
  XzDecMt_FreeOutBufs(p);



  ISzAlloc_Free(p->alignOffsetAlloc.baseAlloc, pp);
}
