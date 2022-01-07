
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_win32_name (char*) ;

void test_refs_create__creating_a_loose_ref_with_invalid_windows_name(void)
{
 test_win32_name("refs/heads/foo./bar");

 test_win32_name("refs/heads/aux");
 test_win32_name("refs/heads/aux.foo/bar");

 test_win32_name("refs/heads/com1");
}
