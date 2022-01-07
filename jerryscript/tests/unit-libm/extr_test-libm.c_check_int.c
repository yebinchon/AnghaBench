
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int passed ;
 int printf (char*,char const*,...) ;

__attribute__((used)) static void
check_int (const char *expr, int computed, int expected)
{
  printf ("%s = %d [expected=%d] ", expr, computed, expected);

  bool result = computed == expected;
  printf ("%s\n", result ? "PASS" : "FAIL");

  passed &= result;
}
