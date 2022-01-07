
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* needInitProp; void* needInitState; scalar_t__ srcPos; } ;
typedef TYPE_1__ CLzma2EncInt ;


 void* True ;

__attribute__((used)) static void Lzma2EncInt_InitBlock(CLzma2EncInt *p)
{
  p->srcPos = 0;
  p->needInitState = True;
  p->needInitProp = True;
}
