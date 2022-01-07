
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Range; int Code; int Stream; } ;
typedef TYPE_1__ CPpmd7z_RangeDec ;


 int IByteIn_Read (int ) ;
 int kTopValue ;

__attribute__((used)) static void Range_Normalize(CPpmd7z_RangeDec *p)
{
  if (p->Range < kTopValue)
  {
    p->Code = (p->Code << 8) | IByteIn_Read(p->Stream);
    p->Range <<= 8;
    if (p->Range < kTopValue)
    {
      p->Code = (p->Code << 8) | IByteIn_Read(p->Stream);
      p->Range <<= 8;
    }
  }
}
