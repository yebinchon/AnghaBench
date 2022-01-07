
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int DecodeBit; int Decode; int GetThreshold; } ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ CPpmd7z_RangeDec ;


 int Range_Decode ;
 int Range_DecodeBit ;
 int Range_GetThreshold ;

void Ppmd7z_RangeDec_CreateVTable(CPpmd7z_RangeDec *p)
{
  p->vt.GetThreshold = Range_GetThreshold;
  p->vt.Decode = Range_Decode;
  p->vt.DecodeBit = Range_DecodeBit;
}
