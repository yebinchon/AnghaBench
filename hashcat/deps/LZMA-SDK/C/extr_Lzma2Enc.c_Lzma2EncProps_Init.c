
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numBlockThreads_Reduced; int numBlockThreads_Max; int numTotalThreads; int blockSize; int lzmaProps; } ;
typedef TYPE_1__ CLzma2EncProps ;


 int LZMA2_ENC_PROPS__BLOCK_SIZE__AUTO ;
 int LzmaEncProps_Init (int *) ;

void Lzma2EncProps_Init(CLzma2EncProps *p)
{
  LzmaEncProps_Init(&p->lzmaProps);
  p->blockSize = LZMA2_ENC_PROPS__BLOCK_SIZE__AUTO;
  p->numBlockThreads_Reduced = -1;
  p->numBlockThreads_Max = -1;
  p->numTotalThreads = -1;
}
