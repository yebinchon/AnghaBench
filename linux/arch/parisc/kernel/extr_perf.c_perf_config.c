
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int EINVAL ;
 int perf_start_counters () ;
 long perf_stop_counters (int *) ;
 long perf_write_image (int *) ;
 int printk (char*,...) ;

__attribute__((used)) static int perf_config(uint32_t *image_ptr)
{
 long error;
 uint32_t raddr[4];


 error = perf_stop_counters(raddr);
 if (error != 0) {
  printk("perf_config: perf_stop_counters = %ld\n", error);
  return -EINVAL;
 }

printk("Preparing to write image\n");

 error = perf_write_image((uint64_t *)image_ptr);
 if (error != 0) {
  printk("perf_config: DOWNLOAD = %ld\n", error);
  return -EINVAL;
 }

printk("Preparing to start counters\n");


 perf_start_counters();

 return sizeof(uint32_t);
}
