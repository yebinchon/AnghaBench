
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int ttl; } ;
typedef TYPE_1__ dns_zone_t ;
struct TYPE_6__ {scalar_t__ data_len; scalar_t__ data; int flag_has_ttl; } ;
typedef TYPE_2__ dns_trie_record_t ;


 int memcpy (unsigned int*,scalar_t__,int) ;

__attribute__((used)) static unsigned int dns_get_ttl (dns_trie_record_t *R, dns_zone_t *Z) {
  if (!R->flag_has_ttl) {
    return Z->ttl;
  }
  unsigned int x;
  memcpy (&x, R->data + R->data_len, 4);
  return x;
}
