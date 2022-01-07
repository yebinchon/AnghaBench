
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldc_channel {int rx_tail; } ;


 int __set_rx_head (struct ldc_channel*,int ) ;

int ldc_rx_reset(struct ldc_channel *lp)
{
 return __set_rx_head(lp, lp->rx_tail);
}
