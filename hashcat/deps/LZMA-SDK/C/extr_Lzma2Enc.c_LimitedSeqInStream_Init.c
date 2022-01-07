
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UInt64 ;
struct TYPE_3__ {scalar_t__ finished; scalar_t__ processed; scalar_t__ limit; } ;
typedef scalar_t__ Int64 ;
typedef TYPE_1__ CLimitedSeqInStream ;



__attribute__((used)) static void LimitedSeqInStream_Init(CLimitedSeqInStream *p)
{
  p->limit = (UInt64)(Int64)-1;
  p->processed = 0;
  p->finished = 0;
}
