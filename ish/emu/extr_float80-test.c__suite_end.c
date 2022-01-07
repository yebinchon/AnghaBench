
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,int,double,double) ;
 int suite_passed ;
 double suite_total ;

void _suite_end(const char *suite) {
    printf("%s: %d/%d passed (%.0f%%)\n", suite, suite_passed, suite_total, (double) suite_passed / suite_total * 100);
}
