
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UInt64 ;
struct TYPE_7__ {scalar_t__ reduceSize; } ;
struct TYPE_9__ {scalar_t__ numTotalThreads; scalar_t__ blockSize; int numBlockThreads_Reduced; int numBlockThreads_Max; TYPE_1__ lzmaProps; } ;
struct TYPE_8__ {scalar_t__ blockSize; scalar_t__ reduceSize; int numBlockThreads_Reduced; int numBlockThreads_Max; scalar_t__ numTotalThreads; TYPE_3__ lzma2Props; } ;
typedef scalar_t__ Int64 ;
typedef TYPE_2__ CXzProps ;
typedef TYPE_3__ CLzma2EncProps ;


 scalar_t__ LZMA2_ENC_PROPS__BLOCK_SIZE__AUTO ;
 scalar_t__ LZMA2_ENC_PROPS__BLOCK_SIZE__SOLID ;
 int Lzma2EncProps_Normalize (TYPE_3__*) ;
 scalar_t__ XZ_PROPS__BLOCK_SIZE__SOLID ;
 int XzEncProps_Normalize_Fixed (TYPE_2__*) ;

__attribute__((used)) static void XzProps_Normalize(CXzProps *p)
{



  if (p->blockSize == XZ_PROPS__BLOCK_SIZE__SOLID)
  {
    p->lzma2Props.lzmaProps.reduceSize = p->reduceSize;
    p->numBlockThreads_Reduced = 1;
    p->numBlockThreads_Max = 1;
    if (p->lzma2Props.numTotalThreads <= 0)
      p->lzma2Props.numTotalThreads = p->numTotalThreads;
    return;
  }
  else
  {
    CLzma2EncProps *lzma2 = &p->lzma2Props;
    if (p->blockSize == LZMA2_ENC_PROPS__BLOCK_SIZE__AUTO)
    {

      p->lzma2Props.lzmaProps.reduceSize = p->reduceSize;

      if (lzma2->blockSize == LZMA2_ENC_PROPS__BLOCK_SIZE__SOLID)
      {

        p->blockSize = XZ_PROPS__BLOCK_SIZE__SOLID;
        p->numBlockThreads_Reduced = 1;
        p->numBlockThreads_Max = 1;
        if (p->lzma2Props.numTotalThreads <= 0)
          p->lzma2Props.numTotalThreads = p->numTotalThreads;
      }
      else
      {


        CLzma2EncProps tp = p->lzma2Props;
        if (tp.numTotalThreads <= 0)
          tp.numTotalThreads = p->numTotalThreads;

        Lzma2EncProps_Normalize(&tp);

        p->blockSize = tp.blockSize;
        p->numBlockThreads_Reduced = tp.numBlockThreads_Reduced;
        p->numBlockThreads_Max = tp.numBlockThreads_Max;
        if (lzma2->blockSize == LZMA2_ENC_PROPS__BLOCK_SIZE__AUTO)
          lzma2->blockSize = tp.blockSize;
        if (lzma2->lzmaProps.reduceSize > tp.blockSize && tp.blockSize != LZMA2_ENC_PROPS__BLOCK_SIZE__SOLID)
          lzma2->lzmaProps.reduceSize = tp.blockSize;
        lzma2->numBlockThreads_Reduced = 1;
        lzma2->numBlockThreads_Max = 1;
        return;
      }
    }
    else
    {



      p->lzma2Props.lzmaProps.reduceSize = p->reduceSize;
      {
        UInt64 r = p->reduceSize;
        if (r > p->blockSize || r == (UInt64)(Int64)-1)
          r = p->blockSize;
        lzma2->lzmaProps.reduceSize = r;
      }
      if (lzma2->blockSize == LZMA2_ENC_PROPS__BLOCK_SIZE__AUTO)
        lzma2->blockSize = LZMA2_ENC_PROPS__BLOCK_SIZE__SOLID;
      else if (lzma2->blockSize > p->blockSize && lzma2->blockSize != LZMA2_ENC_PROPS__BLOCK_SIZE__SOLID)
        lzma2->blockSize = p->blockSize;

      XzEncProps_Normalize_Fixed(p);
    }
  }
}
