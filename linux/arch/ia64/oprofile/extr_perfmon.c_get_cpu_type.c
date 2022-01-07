
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int __u8 ;
struct TYPE_2__ {int family; } ;


 TYPE_1__* local_cpu_data ;

__attribute__((used)) static char *get_cpu_type(void)
{
 __u8 family = local_cpu_data->family;

 switch (family) {
  case 0x07:
   return "ia64/itanium";
  case 0x1f:
   return "ia64/itanium2";
  default:
   return "ia64/ia64";
 }
}
