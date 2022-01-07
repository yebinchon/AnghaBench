
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned long fib(unsigned long n) {
    if (n <= 1)
        return 1;
    return fib(n - 1) + fib(n - 2);
}
