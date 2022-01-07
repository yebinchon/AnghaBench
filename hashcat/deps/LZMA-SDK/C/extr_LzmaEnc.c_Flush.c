
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_5__ {int pbMask; int rc; scalar_t__ writeEndMark; int finished; } ;
typedef int SRes ;
typedef TYPE_1__ CLzmaEnc ;


 int CheckErrors (TYPE_1__*) ;
 int RangeEnc_FlushData (int *) ;
 int RangeEnc_FlushStream (int *) ;
 int True ;
 int WriteEndMarker (TYPE_1__*,int) ;

__attribute__((used)) static SRes Flush(CLzmaEnc *p, UInt32 nowPos)
{

  p->finished = True;
  if (p->writeEndMark)
    WriteEndMarker(p, nowPos & p->pbMask);
  RangeEnc_FlushData(&p->rc);
  RangeEnc_FlushStream(&p->rc);
  return CheckErrors(p);
}
