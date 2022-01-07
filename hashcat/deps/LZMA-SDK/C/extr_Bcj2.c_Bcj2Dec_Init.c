
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* probs; scalar_t__ code; scalar_t__ range; scalar_t__* temp; scalar_t__ ip; int state; } ;
typedef TYPE_1__ CBcj2Dec ;


 int BCJ2_DEC_STATE_OK ;
 int kBitModelTotal ;

void Bcj2Dec_Init(CBcj2Dec *p)
{
  unsigned i;

  p->state = BCJ2_DEC_STATE_OK;
  p->ip = 0;
  p->temp[3] = 0;
  p->range = 0;
  p->code = 0;
  for (i = 0; i < sizeof(p->probs) / sizeof(p->probs[0]); i++)
    p->probs[i] = kBitModelTotal >> 1;
}
