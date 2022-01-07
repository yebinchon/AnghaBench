
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bios_check_work ;
 scalar_t__ corruption_check_period ;
 int memory_corruption_check ;
 int num_scan_areas ;
 int pr_info (char*,scalar_t__) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int start_periodic_check_for_corruption(void)
{
 if (!num_scan_areas || !memory_corruption_check || corruption_check_period == 0)
  return 0;

 pr_info("Scanning for low memory corruption every %d seconds\n", corruption_check_period);


 schedule_delayed_work(&bios_check_work, 0);

 return 0;
}
