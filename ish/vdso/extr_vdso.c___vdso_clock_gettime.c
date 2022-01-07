
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int clockid_t ;



int __vdso_clock_gettime(clockid_t clock, void *timespec) {
    int result;
    __asm__("int $0x80" : "=a" (result) :
            "0" (265 ), "b" (clock), "c" (timespec));
    return result;
}
