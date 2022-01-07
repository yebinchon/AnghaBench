
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int cutValue; int cyclicBufferSize; int cyclicBufferPos; int buffer; int pos; int numHashBytes; int matchMaxLen; int son; int crc; int fixedHashSize; int hash; } ;
struct TYPE_7__ {int cutValue; int cyclicBufferSize; int cyclicBufferPos; int buffer; int pos; int numHashBytes; int matchMaxLen; int son; int crc; int fixedHashSize; int hash; scalar_t__ historySize; scalar_t__ lzPos; scalar_t__ btNumAvailBytes; int pointerToCurPos; scalar_t__ hashBufPosLimit; scalar_t__ hashBufPos; scalar_t__ btBufPosLimit; scalar_t__ btBufPos; TYPE_2__* MatchFinder; } ;
typedef TYPE_1__ CMatchFinderMt ;
typedef TYPE_2__ CMatchFinder ;


 int False ;
 int Inline_MatchFinder_GetPointerToCurrentPos (TYPE_2__*) ;
 int MatchFinder_Init_3 (TYPE_2__*,int ) ;
 int MatchFinder_Init_LowHash (TYPE_2__*) ;

__attribute__((used)) static void MatchFinderMt_Init(CMatchFinderMt *p)
{
  CMatchFinder *mf = p->MatchFinder;

  p->btBufPos =
  p->btBufPosLimit = 0;
  p->hashBufPos =
  p->hashBufPosLimit = 0;


  MatchFinder_Init_3(mf, False);
  MatchFinder_Init_LowHash(mf);

  p->pointerToCurPos = Inline_MatchFinder_GetPointerToCurrentPos(mf);
  p->btNumAvailBytes = 0;
  p->lzPos = p->historySize + 1;

  p->hash = mf->hash;
  p->fixedHashSize = mf->fixedHashSize;
  p->crc = mf->crc;

  p->son = mf->son;
  p->matchMaxLen = mf->matchMaxLen;
  p->numHashBytes = mf->numHashBytes;
  p->pos = mf->pos;
  p->buffer = mf->buffer;
  p->cyclicBufferPos = mf->cyclicBufferPos;
  p->cyclicBufferSize = mf->cyclicBufferSize;
  p->cutValue = mf->cutValue;
}
