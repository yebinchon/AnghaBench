
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*,char const*) ;
 scalar_t__ parse_one_option (char const*) ;
 scalar_t__ seen_data_command ;

__attribute__((used)) static void parse_option(const char *option)
{
 if (seen_data_command)
  die("Got option command '%s' after data command", option);

 if (parse_one_option(option))
  return;

 die("This version of fast-import does not support option: %s", option);
}
