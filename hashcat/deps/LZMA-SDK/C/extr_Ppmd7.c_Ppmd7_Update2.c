
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int InitRL; int RunLength; TYPE_2__* FoundState; TYPE_1__* MinContext; } ;
struct TYPE_8__ {int Freq; } ;
struct TYPE_7__ {int SummFreq; } ;
typedef TYPE_3__ CPpmd7 ;


 int MAX_FREQ ;
 int Rescale (TYPE_3__*) ;
 int UpdateModel (TYPE_3__*) ;

void Ppmd7_Update2(CPpmd7 *p)
{
  p->MinContext->SummFreq += 4;
  if ((p->FoundState->Freq += 4) > MAX_FREQ)
    Rescale(p);
  p->RunLength = p->InitRL;
  UpdateModel(p);
}
