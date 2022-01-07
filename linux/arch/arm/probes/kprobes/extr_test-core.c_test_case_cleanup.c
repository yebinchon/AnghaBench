
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_after2_probe ;
 int test_after_probe ;
 int test_before_probe ;
 int test_case_probe ;
 int unregister_test_probe (int *) ;

__attribute__((used)) static void test_case_cleanup(void)
{
 unregister_test_probe(&test_before_probe);
 unregister_test_probe(&test_case_probe);
 unregister_test_probe(&test_after_probe);
 unregister_test_probe(&test_after2_probe);
}
