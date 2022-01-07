
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gengetopt_args_info {int dummy; } ;


 int clear_args (struct gengetopt_args_info*) ;
 int clear_given (struct gengetopt_args_info*) ;
 int init_args_info (struct gengetopt_args_info*) ;

void
imagetag_cmdline_init (struct gengetopt_args_info *args_info)
{
  clear_given (args_info);
  clear_args (args_info);
  init_args_info (args_info);
}
