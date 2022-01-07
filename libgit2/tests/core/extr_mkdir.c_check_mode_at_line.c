
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int cl_is_chmod_supported () ;
 int clar__assert_equal (char const*,int,char*,int,char*,int,int) ;

__attribute__((used)) static void check_mode_at_line(
 mode_t expected, mode_t actual, const char *file, int line)
{

 if (!cl_is_chmod_supported()) {
  expected &= 0600;
  actual &= 0600;
 }

 clar__assert_equal(
  file, line, "expected_mode != actual_mode", 1,
  "%07o", (int)expected, (int)(actual & 0777));
}
