
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clar_report_all () ;
 int printf (char*) ;

__attribute__((used)) static void clar_print_shutdown(int test_count, int suite_count, int error_count)
{
 (void)test_count;
 (void)suite_count;
 (void)error_count;

 printf("\n\n");
 clar_report_all();
}
