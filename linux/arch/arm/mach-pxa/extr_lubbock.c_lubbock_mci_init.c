
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int irq_handler_t ;


 int LUBBOCK_SD_IRQ ;
 int lubbock_detect_int ;
 int lubbock_mmc_poll ;
 int mmc_detect_int ;
 void* mmc_detect_int_data ;
 int mmc_timer ;
 int request_irq (int ,int ,int ,char*,void*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int lubbock_mci_init(struct device *dev,
  irq_handler_t detect_int,
  void *data)
{

 mmc_detect_int = detect_int;
 mmc_detect_int_data = data;
 timer_setup(&mmc_timer, lubbock_mmc_poll, 0);
 return request_irq(LUBBOCK_SD_IRQ, lubbock_detect_int,
      0, "lubbock-sd-detect", data);
}
