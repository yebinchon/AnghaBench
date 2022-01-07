
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx {int dummy; } ;


 int DB1300_AC97_PEN_INT ;
 int disable_irq_nosync (int ) ;
 int enable_irq (int ) ;

__attribute__((used)) static void db1300_wm97xx_irqen(struct wm97xx *wm, int enable)
{
 if (enable)
  enable_irq(DB1300_AC97_PEN_INT);
 else
  disable_irq_nosync(DB1300_AC97_PEN_INT);
}
