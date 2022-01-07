
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_4__ {scalar_t__ Size; } ;
typedef int SRes ;
typedef int ISzAllocPtr ;
typedef int ILookInStream ;
typedef TYPE_1__ CSzData ;
typedef int CSzArEx ;
typedef int CBuf ;


 int Buf_Free (int *,int ) ;
 int Buf_Init (int *) ;
 int NUM_ADDITIONAL_STREAMS_MAX ;
 int RINOK (int ) ;
 int SZ_ERROR_FAIL ;
 int SzReadHeader2 (int *,TYPE_1__*,int *,int *,int*,int ,int ) ;

__attribute__((used)) static SRes SzReadHeader(
    CSzArEx *p,
    CSzData *sd,
    ILookInStream *inStream,
    ISzAllocPtr allocMain,
    ISzAllocPtr allocTemp)
{
  UInt32 i;
  UInt32 numTempBufs = 0;
  SRes res;
  CBuf tempBufs[NUM_ADDITIONAL_STREAMS_MAX];

  for (i = 0; i < NUM_ADDITIONAL_STREAMS_MAX; i++)
    Buf_Init(tempBufs + i);

  res = SzReadHeader2(p, sd, inStream,
      tempBufs, &numTempBufs,
      allocMain, allocTemp);

  for (i = 0; i < NUM_ADDITIONAL_STREAMS_MAX; i++)
    Buf_Free(tempBufs + i, allocTemp);

  RINOK(res);

  if (sd->Size != 0)
    return SZ_ERROR_FAIL;

  return res;
}
