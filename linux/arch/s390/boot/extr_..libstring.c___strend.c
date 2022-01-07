
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline char *__strend(const char *s)
{
 register unsigned long r0 asm("0") = 0;

 asm volatile ("0: srst  %0,%1\n"
        "   jo    0b"
        : "+d" (r0), "+a" (s) : : "cc", "memory");
 return (char *) r0;
}
