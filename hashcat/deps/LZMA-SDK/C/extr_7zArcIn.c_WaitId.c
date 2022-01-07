
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UInt64 ;
typedef scalar_t__ UInt32 ;
typedef int SRes ;
typedef int CSzData ;


 int RINOK (int ) ;
 int ReadID (int *,scalar_t__*) ;
 int SZ_ERROR_ARCHIVE ;
 int SZ_OK ;
 int SkipData (int *) ;
 scalar_t__ k7zIdEnd ;

__attribute__((used)) static SRes WaitId(CSzData *sd, UInt32 id)
{
  for (;;)
  {
    UInt64 type;
    RINOK(ReadID(sd, &type));
    if (type == id)
      return SZ_OK;
    if (type == k7zIdEnd)
      return SZ_ERROR_ARCHIVE;
    RINOK(SkipData(sd));
  }
}
