
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned int UInt32 ;
struct TYPE_6__ {unsigned int dictSize; unsigned int distTableSize; scalar_t__ nowPos64; int result; int finished; } ;
typedef int SRes ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CLzmaEnc ;


 int False ;
 int LzmaEnc_Alloc (TYPE_1__*,unsigned int,int ,int ) ;
 int LzmaEnc_Init (TYPE_1__*) ;
 int LzmaEnc_InitPrices (TYPE_1__*) ;
 int RINOK (int ) ;
 int SZ_OK ;
 unsigned int kDicLogSizeMax ;
 int kEndPosModelIndex ;

__attribute__((used)) static SRes LzmaEnc_AllocAndInit(CLzmaEnc *p, UInt32 keepWindowSize, ISzAllocPtr alloc, ISzAllocPtr allocBig)
{
  unsigned i;
  for (i = kEndPosModelIndex / 2; i < kDicLogSizeMax; i++)
    if (p->dictSize <= ((UInt32)1 << i))
      break;
  p->distTableSize = i * 2;

  p->finished = False;
  p->result = SZ_OK;
  RINOK(LzmaEnc_Alloc(p, keepWindowSize, alloc, allocBig));
  LzmaEnc_Init(p);
  LzmaEnc_InitPrices(p);
  p->nowPos64 = 0;
  return SZ_OK;
}
