
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gengetopt_args_info {int dummy; } ;


 int imagetag_cmdline2 (int,char**,struct gengetopt_args_info*,int ,int,int) ;

int
imagetag_cmdline (int argc, char **argv, struct gengetopt_args_info *args_info)
{
  return imagetag_cmdline2 (argc, argv, args_info, 0, 1, 1);
}
