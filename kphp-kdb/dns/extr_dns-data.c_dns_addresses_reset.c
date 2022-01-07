
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int a_ttl; int aaaa_ttl; } ;
typedef TYPE_1__ dns_adresses_t ;



__attribute__((used)) static void dns_addresses_reset (dns_adresses_t *A) {
  A->a_ttl = A->aaaa_ttl = -2;
}
