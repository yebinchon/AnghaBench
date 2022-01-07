
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int des_event_flags; int deu_thread_wait; } ;


 int DES_ASYNC_EVENT ;
 int DEU_WAKEUP_EVENT (int ,int ,int ) ;
 TYPE_1__ deu_dma_priv ;

__attribute__((used)) static void process_queue(unsigned long data)
{
      DEU_WAKEUP_EVENT(deu_dma_priv.deu_thread_wait, DES_ASYNC_EVENT,
                deu_dma_priv.des_event_flags);

}
