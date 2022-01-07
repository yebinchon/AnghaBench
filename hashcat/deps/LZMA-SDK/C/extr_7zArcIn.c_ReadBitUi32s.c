
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_5__ {int Defs; } ;
typedef int SRes ;
typedef int ISzAllocPtr ;
typedef int CSzData ;
typedef TYPE_1__ CSzBitUi32s ;


 int RINOK (int ) ;
 int ReadBitVector (int *,int ,int *,int ) ;
 int ReadUi32s (int *,int ,TYPE_1__*,int ) ;
 int SzBitUi32s_Free (TYPE_1__*,int ) ;

__attribute__((used)) static SRes ReadBitUi32s(CSzData *sd, UInt32 numItems, CSzBitUi32s *crcs, ISzAllocPtr alloc)
{
  SzBitUi32s_Free(crcs, alloc);
  RINOK(ReadBitVector(sd, numItems, &crcs->Defs, alloc));
  return ReadUi32s(sd, numItems, crcs, alloc);
}
