
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ag71xx {TYPE_1__* dev; } ;
struct TYPE_2__ {int name; } ;


 int AG71XX_INT_RX_BE ;
 int AG71XX_INT_RX_OF ;
 int AG71XX_INT_RX_PR ;
 int AG71XX_INT_TX_BE ;
 int AG71XX_INT_TX_PS ;
 int AG71XX_INT_TX_UR ;
 int DBG (char*,int ,char*,int,char*,char*,char*,char*,char*,char*) ;

__attribute__((used)) static inline void ag71xx_dump_intr(struct ag71xx *ag, char *label, u32 intr)
{
 DBG("%s: %s intr=%08x %s%s%s%s%s%s\n",
  ag->dev->name, label, intr,
  (intr & AG71XX_INT_TX_PS) ? "TXPS " : "",
  (intr & AG71XX_INT_TX_UR) ? "TXUR " : "",
  (intr & AG71XX_INT_TX_BE) ? "TXBE " : "",
  (intr & AG71XX_INT_RX_PR) ? "RXPR " : "",
  (intr & AG71XX_INT_RX_OF) ? "RXOF " : "",
  (intr & AG71XX_INT_RX_BE) ? "RXBE " : "");
}
