
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_4__ {int historySize; int* hashBuf; int* btBuf; int btSync; int hashSync; int * MatchFinder; } ;
typedef int SRes ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CMatchFinderMt ;
typedef int CMatchFinder ;


 int BtThreadFunc2 ;
 int HashThreadFunc2 ;
 scalar_t__ ISzAlloc_Alloc (int ,int) ;
 int MatchFinder_Create (int *,int,int,int,int,int ) ;
 int MtSync_Create (int *,int ,TYPE_1__*,int ) ;
 int RINOK (int ) ;
 int SZ_ERROR_MEM ;
 int SZ_ERROR_PARAM ;
 int SZ_OK ;
 int kBtBufferSize ;
 int kHashBufferSize ;
 int kMtBtBlockSize ;
 int kMtBtNumBlocks ;
 scalar_t__ kMtHashBlockSize ;
 int kMtHashNumBlocks ;

SRes MatchFinderMt_Create(CMatchFinderMt *p, UInt32 historySize, UInt32 keepAddBufferBefore,
    UInt32 matchMaxLen, UInt32 keepAddBufferAfter, ISzAllocPtr alloc)
{
  CMatchFinder *mf = p->MatchFinder;
  p->historySize = historySize;
  if (kMtBtBlockSize <= matchMaxLen * 4)
    return SZ_ERROR_PARAM;
  if (!p->hashBuf)
  {
    p->hashBuf = (UInt32 *)ISzAlloc_Alloc(alloc, (kHashBufferSize + kBtBufferSize) * sizeof(UInt32));
    if (!p->hashBuf)
      return SZ_ERROR_MEM;
    p->btBuf = p->hashBuf + kHashBufferSize;
  }
  keepAddBufferBefore += (kHashBufferSize + kBtBufferSize);
  keepAddBufferAfter += kMtHashBlockSize;
  if (!MatchFinder_Create(mf, historySize, keepAddBufferBefore, matchMaxLen, keepAddBufferAfter, alloc))
    return SZ_ERROR_MEM;

  RINOK(MtSync_Create(&p->hashSync, HashThreadFunc2, p, kMtHashNumBlocks));
  RINOK(MtSync_Create(&p->btSync, BtThreadFunc2, p, kMtBtNumBlocks));
  return SZ_OK;
}
