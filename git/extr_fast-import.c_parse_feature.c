
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*,char const*) ;
 scalar_t__ parse_one_feature (char const*,int) ;
 scalar_t__ seen_data_command ;

__attribute__((used)) static void parse_feature(const char *feature)
{
 if (seen_data_command)
  die("Got feature command '%s' after data command", feature);

 if (parse_one_feature(feature, 1))
  return;

 die("This version of fast-import does not support feature %s.", feature);
}
