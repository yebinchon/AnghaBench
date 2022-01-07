
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int count ;
 int test_ec_combine () ;

void run_ec_combine(void) {
    int i;
    for (i = 0; i < count * 8; i++) {
         test_ec_combine();
    }
}
