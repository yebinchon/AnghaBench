
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int git_win32_path ;


 int GIT_UNUSED (char const*) ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int ,int) ;
 int cl_assert_equal_wcs (char const*,int ) ;
 int git_win32_path_from_utf8 (int ,char const*) ;
 int wcslen (char const*) ;

void test_utf8_to_utf16(const char *utf8_in, const wchar_t *utf16_expected)
{
 GIT_UNUSED(utf8_in);
 GIT_UNUSED(utf16_expected);

}
