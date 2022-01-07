
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int is_4in6 (unsigned char ipv6[16]) { return !*((long long *) ipv6) && ((int *) ipv6)[2] == -0x10000; }
