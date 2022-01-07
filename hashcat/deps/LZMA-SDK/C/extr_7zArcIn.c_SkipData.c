
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UInt64 ;
struct TYPE_5__ {scalar_t__ Size; } ;
typedef int SRes ;
typedef TYPE_1__ CSzData ;


 int RINOK (int ) ;
 int ReadNumber (TYPE_1__*,scalar_t__*) ;
 int SKIP_DATA (TYPE_1__*,scalar_t__) ;
 int SZ_ERROR_ARCHIVE ;
 int SZ_OK ;

__attribute__((used)) static SRes SkipData(CSzData *sd)
{
  UInt64 size;
  RINOK(ReadNumber(sd, &size));
  if (size > sd->Size)
    return SZ_ERROR_ARCHIVE;
  SKIP_DATA(sd, size);
  return SZ_OK;
}
