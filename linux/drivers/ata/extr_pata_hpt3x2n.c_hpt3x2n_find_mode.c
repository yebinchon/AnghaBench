
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hpt_clock {int xfer_speed; int timing; } ;
struct ata_port {int dummy; } ;


 int BUG () ;
 struct hpt_clock* hpt3x2n_clocks ;

__attribute__((used)) static u32 hpt3x2n_find_mode(struct ata_port *ap, int speed)
{
 struct hpt_clock *clocks = hpt3x2n_clocks;

 while (clocks->xfer_speed) {
  if (clocks->xfer_speed == speed)
   return clocks->timing;
  clocks++;
 }
 BUG();
 return 0xffffffffU;
}
