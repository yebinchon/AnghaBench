
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;


 int die (char*,char const*) ;
 int parse_timestamp (char const*,char**,int ) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;

__attribute__((used)) static int process_deepen_since(const char *line, timestamp_t *deepen_since, int *deepen_rev_list)
{
 const char *arg;
 if (skip_prefix(line, "deepen-since ", &arg)) {
  char *end = ((void*)0);
  *deepen_since = parse_timestamp(arg, &end, 0);
  if (!end || *end || !deepen_since ||

      *deepen_since == -1)
   die("Invalid deepen-since: %s", line);
  *deepen_rev_list = 1;
  return 1;
 }
 return 0;
}
