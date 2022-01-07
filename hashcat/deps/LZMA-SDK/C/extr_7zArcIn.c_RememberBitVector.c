
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_4__ {int Size; int * Data; } ;
typedef int SRes ;
typedef TYPE_1__ CSzData ;
typedef int Byte ;


 int SKIP_DATA (TYPE_1__*,int) ;
 int SZ_ERROR_ARCHIVE ;
 int SZ_OK ;

__attribute__((used)) static SRes RememberBitVector(CSzData *sd, UInt32 numItems, const Byte **v)
{
  UInt32 numBytes = (numItems + 7) >> 3;
  if (numBytes > sd->Size)
    return SZ_ERROR_ARCHIVE;
  *v = sd->Data;
  SKIP_DATA(sd, numBytes);
  return SZ_OK;
}
