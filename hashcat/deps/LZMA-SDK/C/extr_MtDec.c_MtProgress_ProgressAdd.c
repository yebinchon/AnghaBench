
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UInt64 ;
struct TYPE_3__ {scalar_t__ res; int cs; int totalOutSize; int totalInSize; scalar_t__ progress; } ;
typedef scalar_t__ SRes ;
typedef TYPE_1__ CMtProgress ;


 int CriticalSection_Enter (int *) ;
 int CriticalSection_Leave (int *) ;
 scalar_t__ ICompressProgress_Progress (scalar_t__,int ,int ) ;
 scalar_t__ SZ_ERROR_PROGRESS ;
 scalar_t__ SZ_OK ;

SRes MtProgress_ProgressAdd(CMtProgress *p, UInt64 inSize, UInt64 outSize)
{
  SRes res;
  CriticalSection_Enter(&p->cs);

  p->totalInSize += inSize;
  p->totalOutSize += outSize;
  if (p->res == SZ_OK && p->progress)
    if (ICompressProgress_Progress(p->progress, p->totalInSize, p->totalOutSize) != SZ_OK)
      p->res = SZ_ERROR_PROGRESS;
  res = p->res;

  CriticalSection_Leave(&p->cs);
  return res;
}
