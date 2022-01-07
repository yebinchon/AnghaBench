
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cl_test_status { ____Placeholder_cl_test_status } cl_test_status ;






 int fflush (int ) ;
 int printf (char*) ;
 int stdout ;

__attribute__((used)) static void clar_print_ontest(const char *test_name, int test_number, enum cl_test_status status)
{
 (void)test_name;
 (void)test_number;

 switch(status) {
 case 129: printf("."); break;
 case 131: printf("F"); break;
 case 128: printf("S"); break;
 case 130: printf("N"); break;
 }

 fflush(stdout);
}
