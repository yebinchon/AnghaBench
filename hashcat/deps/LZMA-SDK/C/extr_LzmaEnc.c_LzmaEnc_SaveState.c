
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_5__ {int litProbs; int repLenProbs; int lenProbs; int state; } ;
struct TYPE_6__ {int lclp; int litProbs; int repLenProbs; int lenProbs; int state; TYPE_1__ saveState; } ;
typedef TYPE_1__ CSaveState ;
typedef int CLzmaProb ;
typedef scalar_t__ CLzmaEncHandle ;
typedef TYPE_2__ CLzmaEnc ;


 int COPY_ARR (TYPE_1__*,TYPE_2__*,int ) ;
 int isMatch ;
 int isRep ;
 int isRep0Long ;
 int isRepG0 ;
 int isRepG1 ;
 int isRepG2 ;
 int memcpy (int ,int ,int) ;
 int posAlignEncoder ;
 int posEncoders ;
 int posSlotEncoder ;
 int reps ;

void LzmaEnc_SaveState(CLzmaEncHandle pp)
{
  CLzmaEnc *p = (CLzmaEnc *)pp;
  CSaveState *dest = &p->saveState;

  dest->state = p->state;

  dest->lenProbs = p->lenProbs;
  dest->repLenProbs = p->repLenProbs;

  COPY_ARR(dest, p, reps);

  COPY_ARR(dest, p, posAlignEncoder);
  COPY_ARR(dest, p, isRep);
  COPY_ARR(dest, p, isRepG0);
  COPY_ARR(dest, p, isRepG1);
  COPY_ARR(dest, p, isRepG2);
  COPY_ARR(dest, p, isMatch);
  COPY_ARR(dest, p, isRep0Long);
  COPY_ARR(dest, p, posSlotEncoder);
  COPY_ARR(dest, p, posEncoders);

  memcpy(dest->litProbs, p->litProbs, ((UInt32)0x300 << p->lclp) * sizeof(CLzmaProb));
}
