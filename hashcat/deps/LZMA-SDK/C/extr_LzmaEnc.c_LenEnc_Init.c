
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** high; void** low; } ;
typedef TYPE_1__ CLenEnc ;


 int LZMA_NUM_PB_STATES_MAX ;
 unsigned int kLenNumHighSymbols ;
 int kLenNumLowBits ;
 void* kProbInitValue ;

__attribute__((used)) static void LenEnc_Init(CLenEnc *p)
{
  unsigned i;
  for (i = 0; i < (LZMA_NUM_PB_STATES_MAX << (kLenNumLowBits + 1)); i++)
    p->low[i] = kProbInitValue;
  for (i = 0; i < kLenNumHighSymbols; i++)
    p->high[i] = kProbInitValue;
}
