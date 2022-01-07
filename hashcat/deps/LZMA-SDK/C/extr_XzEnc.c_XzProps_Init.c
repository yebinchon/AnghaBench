
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UInt64 ;
struct TYPE_3__ {int numBlockThreads_Reduced; int numBlockThreads_Max; int numTotalThreads; int lzma2Props; int filterProps; scalar_t__ forceWriteSizesInHeader; scalar_t__ reduceSize; int blockSize; int checkId; } ;
typedef scalar_t__ Int64 ;
typedef TYPE_1__ CXzProps ;


 int Lzma2EncProps_Init (int *) ;
 int XZ_CHECK_CRC32 ;
 int XZ_PROPS__BLOCK_SIZE__AUTO ;
 int XzFilterProps_Init (int *) ;

void XzProps_Init(CXzProps *p)
{
  p->checkId = XZ_CHECK_CRC32;
  p->blockSize = XZ_PROPS__BLOCK_SIZE__AUTO;
  p->numBlockThreads_Reduced = -1;
  p->numBlockThreads_Max = -1;
  p->numTotalThreads = -1;
  p->reduceSize = (UInt64)(Int64)-1;
  p->forceWriteSizesInHeader = 0;


  XzFilterProps_Init(&p->filterProps);
  Lzma2EncProps_Init(&p->lzma2Props);
}
