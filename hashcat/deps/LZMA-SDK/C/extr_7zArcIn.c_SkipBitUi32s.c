
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_4__ {size_t Size; int Data; } ;
typedef int SRes ;
typedef TYPE_1__ CSzData ;
typedef int Byte ;


 int CountDefinedBits (int ,int) ;
 int SKIP_DATA (TYPE_1__*,size_t) ;
 int SZ_ERROR_ARCHIVE ;
 int SZ_OK ;
 int SZ_READ_BYTE (int ) ;

__attribute__((used)) static SRes SkipBitUi32s(CSzData *sd, UInt32 numItems)
{
  Byte allAreDefined;
  UInt32 numDefined = numItems;
  SZ_READ_BYTE(allAreDefined);
  if (!allAreDefined)
  {
    size_t numBytes = (numItems + 7) >> 3;
    if (numBytes > sd->Size)
      return SZ_ERROR_ARCHIVE;
    numDefined = CountDefinedBits(sd->Data, numItems);
    SKIP_DATA(sd, numBytes);
  }
  if (numDefined > (sd->Size >> 2))
    return SZ_ERROR_ARCHIVE;
  SKIP_DATA(sd, (size_t)numDefined * 4);
  return SZ_OK;
}
