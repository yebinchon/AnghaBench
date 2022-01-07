
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*) ;

__attribute__((used)) static void
usage(const char *name)
{
  static const char *const usage_msg[] = {
  "switches:",
  "-d           set $DEBUG to true (same as `mruby -d`)",
  "-r library   same as `mruby -r`",
  "-v           print version number, then run in verbose mode",
  "--verbose    run in verbose mode",
  "--version    print the version",
  "--copyright  print the copyright",
  ((void*)0)
  };
  const char *const *p = usage_msg;

  printf("Usage: %s [switches]\n", name);
  while (*p)
    printf("  %s\n", *p++);
}
