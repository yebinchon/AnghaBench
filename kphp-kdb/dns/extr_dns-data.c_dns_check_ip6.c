
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ipv6; scalar_t__ mask; } ;
typedef TYPE_1__ dns_network6_t ;



__attribute__((used)) static int dns_check_ip6 (dns_network6_t *N, unsigned char *ipv6) {
  unsigned long long *m = (unsigned long long *) N->mask;
  unsigned long long *a = (unsigned long long *) N->ipv6;
  unsigned long long *b = (unsigned long long *) ipv6;
  if (((a[0] ^ b[0]) & m[0]) | ((a[1] ^ b[1]) & m[1])) {
    return -1;
  }
  return 0;
}
