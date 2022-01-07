
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int old_timeout; } ;


 int __firmware_loading_timeout () ;
 int __fw_fallback_set_timeout (int) ;
 TYPE_1__ fw_fallback_config ;

void fw_fallback_set_cache_timeout(void)
{
 fw_fallback_config.old_timeout = __firmware_loading_timeout();
 __fw_fallback_set_timeout(10);
}
