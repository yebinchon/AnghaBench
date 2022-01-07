
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A20_ENABLE_LOOPS ;
 scalar_t__ a20_test_long () ;
 scalar_t__ a20_test_short () ;
 int empty_8042 () ;
 int enable_a20_bios () ;
 int enable_a20_fast () ;
 int enable_a20_kbc () ;

int enable_a20(void)
{
       int loops = A20_ENABLE_LOOPS;
       int kbc_err;

       while (loops--) {


        if (a20_test_short())
         return 0;


        enable_a20_bios();
        if (a20_test_short())
         return 0;


        kbc_err = empty_8042();

        if (a20_test_short())
         return 0;

        if (!kbc_err) {
         enable_a20_kbc();
         if (a20_test_long())
          return 0;
        }


        enable_a20_fast();
        if (a20_test_long())
         return 0;
       }

       return -1;
}
