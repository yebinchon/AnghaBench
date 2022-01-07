
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int decoder; } ;
typedef TYPE_1__ CLzma2Dec_Spec ;


 int Lzma2Dec_Init (int *) ;

__attribute__((used)) static void Lzma2State_Init(void *pp)
{
  Lzma2Dec_Init(&((CLzma2Dec_Spec *)pp)->decoder);
}
