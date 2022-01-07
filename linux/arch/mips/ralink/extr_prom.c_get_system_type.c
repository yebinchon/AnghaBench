
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* sys_type; } ;


 TYPE_1__ soc_info ;

const char *get_system_type(void)
{
 return soc_info.sys_type;
}
