
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int warning (char*) ;

__attribute__((used)) static int die_is_recursing_builtin(void)
{
 static int dying;






 static const int recursion_limit = 1024;

 dying++;
 if (dying > recursion_limit) {
  return 1;
 } else if (dying == 2) {
  warning("die() called many times. Recursion error or racy threaded death!");
  return 0;
 } else {
  return 0;
 }
}
