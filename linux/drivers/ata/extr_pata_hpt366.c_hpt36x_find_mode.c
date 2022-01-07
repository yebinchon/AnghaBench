
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hpt_clock {int xfer_mode; int timing; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {struct hpt_clock* private_data; } ;


 int BUG () ;

__attribute__((used)) static u32 hpt36x_find_mode(struct ata_port *ap, int speed)
{
 struct hpt_clock *clocks = ap->host->private_data;

 while (clocks->xfer_mode) {
  if (clocks->xfer_mode == speed)
   return clocks->timing;
  clocks++;
 }
 BUG();
 return 0xffffffffU;
}
