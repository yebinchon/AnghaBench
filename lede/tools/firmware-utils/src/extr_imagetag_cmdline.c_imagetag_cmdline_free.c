
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gengetopt_args_info {int dummy; } ;


 int imagetag_cmdline_release (struct gengetopt_args_info*) ;

void
imagetag_cmdline_free (struct gengetopt_args_info *args_info)
{
  imagetag_cmdline_release (args_info);
}
