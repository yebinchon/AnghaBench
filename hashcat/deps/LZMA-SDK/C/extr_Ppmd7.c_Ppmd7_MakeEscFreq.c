
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UInt32 ;
typedef unsigned int UInt16 ;
struct TYPE_10__ {unsigned int NumStats; int SummFreq; } ;
struct TYPE_9__ {scalar_t__ NumStats; } ;
struct TYPE_7__ {unsigned int Summ; unsigned int Shift; } ;
struct TYPE_8__ {int HiBitsFlag; TYPE_1__ DummySee; TYPE_4__* MinContext; scalar_t__* NS2Indx; TYPE_1__** See; } ;
typedef TYPE_1__ CPpmd_See ;
typedef TYPE_2__ CPpmd7 ;


 TYPE_3__* SUFFIX (TYPE_4__*) ;

CPpmd_See *Ppmd7_MakeEscFreq(CPpmd7 *p, unsigned numMasked, UInt32 *escFreq)
{
  CPpmd_See *see;
  unsigned nonMasked = p->MinContext->NumStats - numMasked;
  if (p->MinContext->NumStats != 256)
  {
    see = p->See[(unsigned)p->NS2Indx[(size_t)nonMasked - 1]] +
        (nonMasked < (unsigned)SUFFIX(p->MinContext)->NumStats - p->MinContext->NumStats) +
        2 * (unsigned)(p->MinContext->SummFreq < 11 * p->MinContext->NumStats) +
        4 * (unsigned)(numMasked > nonMasked) +
        p->HiBitsFlag;
    {
      unsigned r = (see->Summ >> see->Shift);
      see->Summ = (UInt16)(see->Summ - r);
      *escFreq = r + (r == 0);
    }
  }
  else
  {
    see = &p->DummySee;
    *escFreq = 1;
  }
  return see;
}
