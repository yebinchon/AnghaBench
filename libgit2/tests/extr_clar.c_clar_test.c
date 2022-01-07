
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clar_test_init (int,char**) ;
 int clar_test_run () ;
 int clar_test_shutdown () ;

int
clar_test(int argc, char **argv)
{
 int errors;

 clar_test_init(argc, argv);
 errors = clar_test_run();
 clar_test_shutdown();

 return errors;
}
