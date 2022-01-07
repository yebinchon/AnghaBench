
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read_option_args (int,char**) ;
 int set_default_static_files () ;

__attribute__((used)) static void
parse_cmd_line (int argc, char **argv)
{
  read_option_args (argc, argv);
  set_default_static_files ();
}
