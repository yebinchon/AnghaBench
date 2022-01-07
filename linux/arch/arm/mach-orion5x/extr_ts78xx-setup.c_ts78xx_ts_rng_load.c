
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int init; } ;
struct TYPE_5__ {TYPE_1__ ts_rng; } ;
struct TYPE_6__ {TYPE_2__ supports; } ;


 int platform_device_add (int *) ;
 int platform_device_register (int *) ;
 int pr_info (char*,int) ;
 TYPE_3__ ts78xx_fpga ;
 int ts78xx_ts_rng_device ;

__attribute__((used)) static int ts78xx_ts_rng_load(void)
{
 int rc;

 if (ts78xx_fpga.supports.ts_rng.init == 0) {
  rc = platform_device_register(&ts78xx_ts_rng_device);
  if (!rc)
   ts78xx_fpga.supports.ts_rng.init = 1;
 } else
  rc = platform_device_add(&ts78xx_ts_rng_device);

 if (rc)
  pr_info("RNG could not be registered: %d\n", rc);
 return rc;
}
