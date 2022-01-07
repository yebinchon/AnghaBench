
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ res; size_t buf; size_t bufBase; size_t processed; int outStream; } ;
typedef TYPE_1__ CRangeEnc ;


 size_t ISeqOutStream_Write (int ,size_t,size_t) ;
 scalar_t__ SZ_ERROR_WRITE ;
 scalar_t__ SZ_OK ;

__attribute__((used)) static void RangeEnc_FlushStream(CRangeEnc *p)
{
  size_t num;
  if (p->res != SZ_OK)
    return;
  num = p->buf - p->bufBase;
  if (num != ISeqOutStream_Write(p->outStream, p->bufBase, num))
    p->res = SZ_ERROR_WRITE;
  p->processed += num;
  p->buf = p->bufBase;
}
