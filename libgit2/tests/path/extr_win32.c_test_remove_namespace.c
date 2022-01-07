
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int git_win32_path ;


 int GIT_UNUSED (int const*) ;
 scalar_t__ MAX_PATH ;
 int cl_assert (int) ;
 int cl_assert_equal_wcs (int const*,int ) ;
 int git_win32_path_remove_namespace (int ,scalar_t__) ;
 int wcscpy (int ,int const*) ;
 scalar_t__ wcslen (int const*) ;

__attribute__((used)) static void test_remove_namespace(const wchar_t *in, const wchar_t *expected)
{
 GIT_UNUSED(in);
 GIT_UNUSED(expected);

}
