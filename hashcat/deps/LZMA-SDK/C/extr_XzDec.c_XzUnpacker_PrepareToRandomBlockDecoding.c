
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int decodeOnlyOneBlock; scalar_t__ pos; int state; int sha; scalar_t__ numBlocks; scalar_t__ indexSize; } ;
typedef TYPE_1__ CXzUnpacker ;


 int Sha256_Init (int *) ;
 int XZ_STATE_BLOCK_HEADER ;

void XzUnpacker_PrepareToRandomBlockDecoding(CXzUnpacker *p)
{
  p->indexSize = 0;
  p->numBlocks = 0;
  Sha256_Init(&p->sha);
  p->state = XZ_STATE_BLOCK_HEADER;
  p->pos = 0;
  p->decodeOnlyOneBlock = 1;
}
