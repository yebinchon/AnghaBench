
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*,char const*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 scalar_t__ strtol (char const*,char**,int ) ;

__attribute__((used)) static int process_deepen(const char *line, int *depth)
{
 const char *arg;
 if (skip_prefix(line, "deepen ", &arg)) {
  char *end = ((void*)0);
  *depth = (int)strtol(arg, &end, 0);
  if (!end || *end || *depth <= 0)
   die("Invalid deepen: %s", line);
  return 1;
 }

 return 0;
}
