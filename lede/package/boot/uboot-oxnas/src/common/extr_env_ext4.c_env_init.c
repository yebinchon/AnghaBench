
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ulong ;
struct TYPE_2__ {int env_valid; scalar_t__ env_addr; } ;


 int * default_environment ;
 TYPE_1__* gd ;

int env_init(void)
{

 gd->env_addr = (ulong)&default_environment[0];
 gd->env_valid = 1;

 return 0;
}
