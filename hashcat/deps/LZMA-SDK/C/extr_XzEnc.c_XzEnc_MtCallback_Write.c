
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UInt64 ;
struct TYPE_4__ {int alloc; int xzIndex; int outStream; int ** outBufs; TYPE_1__* EncBlocks; } ;
struct TYPE_3__ {scalar_t__ totalSize; int unpackSize; scalar_t__ headerSize; } ;
typedef int SRes ;
typedef TYPE_1__ CXzEncBlockInfo ;
typedef TYPE_2__ CXzEnc ;
typedef int Byte ;


 int RINOK (int ) ;
 int WriteBytes (int ,int const*,scalar_t__) ;
 int XZ_BLOCK_HEADER_SIZE_MAX ;
 scalar_t__ XZ_GET_PAD_SIZE (scalar_t__) ;
 int XzEncIndex_AddIndexRecord (int *,int ,scalar_t__,int ) ;

__attribute__((used)) static SRes XzEnc_MtCallback_Write(void *pp, unsigned outBufIndex)
{
  CXzEnc *me = (CXzEnc *)pp;

  const CXzEncBlockInfo *bInfo = &me->EncBlocks[outBufIndex];
  const Byte *data = me->outBufs[outBufIndex];

  RINOK(WriteBytes(me->outStream, data, bInfo->headerSize));

  {
    UInt64 totalPackFull = bInfo->totalSize + XZ_GET_PAD_SIZE(bInfo->totalSize);
    RINOK(WriteBytes(me->outStream, data + XZ_BLOCK_HEADER_SIZE_MAX, (size_t)totalPackFull - bInfo->headerSize));
  }

  return XzEncIndex_AddIndexRecord(&me->xzIndex, bInfo->unpackSize, bInfo->totalSize, me->alloc);
}
