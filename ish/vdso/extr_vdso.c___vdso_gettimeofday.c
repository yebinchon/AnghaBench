
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int __vdso_gettimeofday(void *timeval, void *timezone) {
    int result;
    __asm__("int $0x80" : "=a" (result) :
            "0" (78 ), "b" (timeval), "c" (timezone));
    return result;
}
