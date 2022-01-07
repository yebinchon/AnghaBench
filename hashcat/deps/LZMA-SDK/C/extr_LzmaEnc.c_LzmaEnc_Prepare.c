
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * outStream; } ;
struct TYPE_5__ {int * stream; } ;
struct TYPE_7__ {int needInit; TYPE_2__ rc; TYPE_1__ matchFinderBase; } ;
typedef int SRes ;
typedef int ISzAllocPtr ;
typedef int ISeqOutStream ;
typedef int ISeqInStream ;
typedef scalar_t__ CLzmaEncHandle ;
typedef TYPE_3__ CLzmaEnc ;


 int LzmaEnc_AllocAndInit (TYPE_3__*,int ,int ,int ) ;

__attribute__((used)) static SRes LzmaEnc_Prepare(CLzmaEncHandle pp, ISeqOutStream *outStream, ISeqInStream *inStream,
    ISzAllocPtr alloc, ISzAllocPtr allocBig)
{
  CLzmaEnc *p = (CLzmaEnc *)pp;
  p->matchFinderBase.stream = inStream;
  p->needInit = 1;
  p->rc.outStream = outStream;
  return LzmaEnc_AllocAndInit(p, 0, alloc, allocBig);
}
