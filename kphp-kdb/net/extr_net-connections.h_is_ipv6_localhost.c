
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int is_ipv6_localhost (unsigned char ipv6[16]) {
  return !*(long long *)ipv6 && ((long long *)ipv6)[1] == 1LL << 56;
}
