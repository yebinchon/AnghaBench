
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fib (unsigned long) ;
 int printf (char*,...) ;
 unsigned long strtoul (char const*,int *,int) ;

int main(int argc, const char *argv[]) {
    if (argc != 2) {
        printf("argc is %d\n", argc);
        printf("please specify a number to fibbonaci\n");
        return 1;
    }
    unsigned long n = strtoul(argv[1], ((void*)0), 10);
    printf("%lu\n", fib(n));
    return 0;
}
