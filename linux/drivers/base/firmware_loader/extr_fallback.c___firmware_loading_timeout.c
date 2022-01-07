
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int loading_timeout; } ;


 TYPE_1__ fw_fallback_config ;

__attribute__((used)) static inline int __firmware_loading_timeout(void)
{
 return fw_fallback_config.loading_timeout;
}
