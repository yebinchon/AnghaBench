
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ totalOutSize; scalar_t__ totalInSize; int res; int * progress; } ;
typedef int ICompressProgress ;
typedef TYPE_1__ CMtProgress ;


 int SZ_OK ;

void MtProgress_Init(CMtProgress *p, ICompressProgress *progress)
{
  p->progress = progress;
  p->res = SZ_OK;
  p->totalInSize = 0;
  p->totalOutSize = 0;
}
