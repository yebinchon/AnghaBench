
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rc; int nowPos64; scalar_t__ finished; } ;
typedef scalar_t__ SRes ;
typedef int ICompressProgress ;
typedef TYPE_1__ CLzmaEnc ;
typedef scalar_t__ Byte ;


 scalar_t__ ICompressProgress_Progress (int *,int ,int ) ;
 scalar_t__ LzmaEnc_CodeOneBlock (TYPE_1__*,int ,int ) ;
 int LzmaEnc_Finish (TYPE_1__*) ;
 int RangeEnc_GetProcessed (int *) ;
 scalar_t__ SZ_ERROR_PROGRESS ;
 scalar_t__ SZ_OK ;

__attribute__((used)) static SRes LzmaEnc_Encode2(CLzmaEnc *p, ICompressProgress *progress)
{
  SRes res = SZ_OK;


  Byte allocaDummy[0x300];
  allocaDummy[0] = 0;
  allocaDummy[1] = allocaDummy[0];


  for (;;)
  {
    res = LzmaEnc_CodeOneBlock(p, 0, 0);
    if (res != SZ_OK || p->finished)
      break;
    if (progress)
    {
      res = ICompressProgress_Progress(progress, p->nowPos64, RangeEnc_GetProcessed(&p->rc));
      if (res != SZ_OK)
      {
        res = SZ_ERROR_PROGRESS;
        break;
      }
    }
  }

  LzmaEnc_Finish(p);







  return res;
}
