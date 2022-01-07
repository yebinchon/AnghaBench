
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*) ;
 scalar_t__ suite_passed ;
 scalar_t__ suite_total ;

void _suite_start(const char *suite) {
    printf("==== %s ====\n", suite);
    suite_passed = 0;
    suite_total = 0;
}
