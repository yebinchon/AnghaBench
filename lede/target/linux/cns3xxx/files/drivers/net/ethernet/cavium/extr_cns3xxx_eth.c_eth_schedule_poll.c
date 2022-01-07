
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw {int napi; int rx_irq; } ;


 int __napi_schedule (int *) ;
 int disable_irq_nosync (int ) ;
 int napi_schedule_prep (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void eth_schedule_poll(struct sw *sw)
{
 if (unlikely(!napi_schedule_prep(&sw->napi)))
  return;

 disable_irq_nosync(sw->rx_irq);
 __napi_schedule(&sw->napi);
}
