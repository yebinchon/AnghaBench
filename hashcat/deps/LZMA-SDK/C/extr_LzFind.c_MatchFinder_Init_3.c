
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ streamEndWasReached; int result; int cyclicBufferSize; int streamPos; int pos; int bufferBase; int buffer; scalar_t__ cyclicBufferPos; } ;
typedef TYPE_1__ CMatchFinder ;


 int MatchFinder_ReadBlock (TYPE_1__*) ;
 int MatchFinder_SetLimits (TYPE_1__*) ;
 int SZ_OK ;

void MatchFinder_Init_3(CMatchFinder *p, int readData)
{
  p->cyclicBufferPos = 0;
  p->buffer = p->bufferBase;
  p->pos =
  p->streamPos = p->cyclicBufferSize;
  p->result = SZ_OK;
  p->streamEndWasReached = 0;

  if (readData)
    MatchFinder_ReadBlock(p);

  MatchFinder_SetLimits(p);
}
