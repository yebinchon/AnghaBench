
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void set_4in6 (unsigned char ipv6[16], unsigned ip) { *(long long *) ipv6 = 0; ((int *) ipv6)[2] = -0x10000; ((int *) ipv6)[3] = ip; }
