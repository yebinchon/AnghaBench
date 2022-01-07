
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int needInitLevel; int decoder; scalar_t__ unpackSize; int isExtraMode; int state; } ;
typedef TYPE_1__ CLzma2Dec ;


 int False ;
 int LZMA2_STATE_CONTROL ;
 int LzmaDec_Init (int *) ;

void Lzma2Dec_Init(CLzma2Dec *p)
{
  p->state = LZMA2_STATE_CONTROL;
  p->needInitLevel = 0xE0;
  p->isExtraMode = False;
  p->unpackSize = 0;


  LzmaDec_Init(&p->decoder);
}
