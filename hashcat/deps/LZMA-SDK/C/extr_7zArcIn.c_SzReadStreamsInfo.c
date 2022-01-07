
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ UInt64 ;
typedef int UInt32 ;
struct TYPE_10__ {int NumTotalSubStreams; int sdNumSubStreams; int sdCRCs; int sdSizes; } ;
struct TYPE_9__ {int NumFolders; } ;
typedef int SRes ;
typedef int ISzAllocPtr ;
typedef int CSzData ;
typedef TYPE_1__ CSzAr ;
typedef TYPE_2__ CSubStreamInfo ;
typedef int CBuf ;


 int RINOK (int ) ;
 int ReadID (int *,scalar_t__*) ;
 int ReadNumber (int *,scalar_t__*) ;
 int ReadPackInfo (TYPE_1__*,int *,int ) ;
 int ReadSubStreamsInfo (TYPE_1__*,int *,TYPE_2__*) ;
 int ReadUnpackInfo (TYPE_1__*,int *,int ,int const*,int ,int ) ;
 int SZ_ERROR_UNSUPPORTED ;
 int SZ_OK ;
 int SzData_Clear (int *) ;
 scalar_t__ k7zIdEnd ;
 scalar_t__ k7zIdPackInfo ;
 scalar_t__ k7zIdSubStreamsInfo ;
 scalar_t__ k7zIdUnpackInfo ;

__attribute__((used)) static SRes SzReadStreamsInfo(CSzAr *p,
    CSzData *sd,
    UInt32 numFoldersMax, const CBuf *tempBufs, UInt32 numTempBufs,
    UInt64 *dataOffset,
    CSubStreamInfo *ssi,
    ISzAllocPtr alloc)
{
  UInt64 type;

  SzData_Clear(&ssi->sdSizes);
  SzData_Clear(&ssi->sdCRCs);
  SzData_Clear(&ssi->sdNumSubStreams);

  *dataOffset = 0;
  RINOK(ReadID(sd, &type));
  if (type == k7zIdPackInfo)
  {
    RINOK(ReadNumber(sd, dataOffset));
    RINOK(ReadPackInfo(p, sd, alloc));
    RINOK(ReadID(sd, &type));
  }
  if (type == k7zIdUnpackInfo)
  {
    RINOK(ReadUnpackInfo(p, sd, numFoldersMax, tempBufs, numTempBufs, alloc));
    RINOK(ReadID(sd, &type));
  }
  if (type == k7zIdSubStreamsInfo)
  {
    RINOK(ReadSubStreamsInfo(p, sd, ssi));
    RINOK(ReadID(sd, &type));
  }
  else
  {
    ssi->NumTotalSubStreams = p->NumFolders;

  }

  return (type == k7zIdEnd ? SZ_OK : SZ_ERROR_UNSUPPORTED);
}
