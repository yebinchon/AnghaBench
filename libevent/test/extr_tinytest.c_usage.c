
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct testgroup_t {int dummy; } ;


 int exit (int ) ;
 int puts (char*) ;
 int tinytest_set_flag_ (struct testgroup_t*,char*,int,int ) ;

__attribute__((used)) static void
usage(struct testgroup_t *groups, int list_groups)
{
 puts("Options are: [--verbose|--quiet|--terse] [--no-fork] [--timeout <sec>]");
 puts("  Specify tests by name, or using a prefix ending with '..'");
 puts("  To skip a test, prefix its name with a colon.");
 puts("  To enable a disabled test, prefix its name with a plus.");
 puts("  Use --list-tests for a list of tests.");
 if (list_groups) {
  puts("Known tests are:");
  tinytest_set_flag_(groups, "..", 1, 0);
 }
 exit(0);
}
