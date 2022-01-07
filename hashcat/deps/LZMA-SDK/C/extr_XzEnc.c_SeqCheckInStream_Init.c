
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UInt64 ;
struct TYPE_3__ {int check; scalar_t__ realStreamFinished; scalar_t__ processed; scalar_t__ limit; } ;
typedef scalar_t__ Int64 ;
typedef TYPE_1__ CSeqCheckInStream ;


 int XzCheck_Init (int *,unsigned int) ;

__attribute__((used)) static void SeqCheckInStream_Init(CSeqCheckInStream *p, unsigned checkMode)
{
  p->limit = (UInt64)(Int64)-1;
  p->processed = 0;
  p->realStreamFinished = 0;
  XzCheck_Init(&p->check, checkMode);
}
