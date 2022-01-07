
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* opt_args; } ;
struct TYPE_3__ {int optc; } ;


 TYPE_2__ cmdline_data ;

int cmdline_getopt_count(char opt)
{
 int index;


 index = opt - 'a';
 if(index < 0 || index > 25) return -1;


 return(cmdline_data.opt_args[index].optc);
}
