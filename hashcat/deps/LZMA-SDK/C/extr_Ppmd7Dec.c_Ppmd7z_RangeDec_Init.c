
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Code; int Range; int Stream; } ;
typedef TYPE_1__ CPpmd7z_RangeDec ;
typedef int BoolInt ;


 int False ;
 int IByteIn_Read (int ) ;

BoolInt Ppmd7z_RangeDec_Init(CPpmd7z_RangeDec *p)
{
  unsigned i;
  p->Code = 0;
  p->Range = 0xFFFFFFFF;
  if (IByteIn_Read(p->Stream) != 0)
    return False;
  for (i = 0; i < 4; i++)
    p->Code = (p->Code << 8) | IByteIn_Read(p->Stream);
  return (p->Code < 0xFFFFFFFF);
}
