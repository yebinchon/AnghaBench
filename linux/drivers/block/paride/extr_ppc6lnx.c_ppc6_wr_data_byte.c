
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int mode; int lpt_addr; int cur_ctrl; } ;
typedef TYPE_1__ Interface ;
 int data_stb ;
 int outb (int ,int ) ;

__attribute__((used)) static void ppc6_wr_data_byte(Interface *ppc, u8 data)
{
 switch(ppc->mode)
 {
  case 128 :
  case 129 :
  case 133 :
  case 134 :
  {
   outb(data, ppc->lpt_addr);

   ppc->cur_ctrl ^= data_stb;

   outb(ppc->cur_ctrl, ppc->lpt_addr + 2);

   break;
  }

  case 132 :
  case 130 :
  case 131 :
  {
   outb(data, ppc->lpt_addr + 4);

   break;
  }
 }
}
