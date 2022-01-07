
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int mode; int cur_ctrl; int lpt_addr; } ;
typedef TYPE_1__ Interface ;
 int data_stb ;
 int inb (int ) ;
 int inl (int ) ;
 int inw (int ) ;
 int outb (int,int ) ;
 int port_dir ;
 int port_stb ;

__attribute__((used)) static void ppc6_rd_data_blk(Interface *ppc, u8 *data, long count)
{
 switch(ppc->mode)
 {
  case 128 :
  case 129 :
  {
   while(count)
   {
    u8 d;

    ppc->cur_ctrl = (ppc->cur_ctrl & ~port_stb) ^ data_stb;

    outb(ppc->cur_ctrl, ppc->lpt_addr + 2);



    d = inb(ppc->lpt_addr + 1);

    d = ((d & 0x80) >> 1) | ((d & 0x38) >> 3);

    ppc->cur_ctrl |= port_stb;

    outb(ppc->cur_ctrl, ppc->lpt_addr + 2);



    d |= inb(ppc->lpt_addr + 1) & 0xB8;

    *data++ = d;
    count--;
   }

   break;
  }

  case 133 :
  case 134 :
  {
   ppc->cur_ctrl |= port_dir;

   outb(ppc->cur_ctrl, ppc->lpt_addr + 2);

   ppc->cur_ctrl |= port_stb;

   while(count)
   {
    ppc->cur_ctrl ^= data_stb;

    outb(ppc->cur_ctrl, ppc->lpt_addr + 2);

    *data++ = inb(ppc->lpt_addr);
    count--;
   }

   ppc->cur_ctrl &= ~port_stb;

   outb(ppc->cur_ctrl, ppc->lpt_addr + 2);

   ppc->cur_ctrl &= ~port_dir;

   outb(ppc->cur_ctrl, ppc->lpt_addr + 2);

   break;
  }

  case 132 :
  {
   outb((ppc->cur_ctrl | port_dir), ppc->lpt_addr + 2);



   while(count)
   {
    *data++ = inb(ppc->lpt_addr + 4);
    count--;
   }

   outb(ppc->cur_ctrl, ppc->lpt_addr + 2);

   break;
  }

  case 130 :
  {
   outb((ppc->cur_ctrl | port_dir), ppc->lpt_addr + 2);



   while(count > 1)
   {
    *((u16 *)data) = inw(ppc->lpt_addr + 4);
    data += 2;
    count -= 2;
   }

   while(count)
   {
    *data++ = inb(ppc->lpt_addr + 4);
    count--;
   }

   outb(ppc->cur_ctrl, ppc->lpt_addr + 2);

   break;
  }

  case 131 :
  {
   outb((ppc->cur_ctrl | port_dir),ppc->lpt_addr + 2);



   while(count > 3)
   {
    *((u32 *)data) = inl(ppc->lpt_addr + 4);
    data += 4;
    count -= 4;
   }

   while(count)
   {
    *data++ = inb(ppc->lpt_addr + 4);
    count--;
   }

   outb(ppc->cur_ctrl, ppc->lpt_addr + 2);

   break;
  }
 }

}
