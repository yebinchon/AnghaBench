
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ res; int totalOutSize; int totalInSize; scalar_t__ progress; } ;
typedef scalar_t__ SRes ;
typedef TYPE_1__ CMtProgress ;


 scalar_t__ ICompressProgress_Progress (scalar_t__,int ,int ) ;
 scalar_t__ SZ_ERROR_PROGRESS ;
 scalar_t__ SZ_OK ;

SRes MtProgress_Progress_ST(CMtProgress *p)
{
  if (p->res == SZ_OK && p->progress)
    if (ICompressProgress_Progress(p->progress, p->totalInSize, p->totalOutSize) != SZ_OK)
      p->res = SZ_ERROR_PROGRESS;
  return p->res;
}
