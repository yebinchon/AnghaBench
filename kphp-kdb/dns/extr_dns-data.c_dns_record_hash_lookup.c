
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data_type; int data_len; scalar_t__ flag_has_ttl; int* data; } ;
typedef TYPE_1__ dns_trie_record_t ;


 size_t* RH ;




 scalar_t__ max_hashed_records ;
 int memcmp (int*,int*,int) ;
 int * records_buff ;
 int records_hash_prime ;
 scalar_t__ tot_hashed_records ;

__attribute__((used)) static int dns_record_hash_lookup (int record_off) {
  if (RH == ((void*)0)) {
    return -1;
  }
  dns_trie_record_t *R = (dns_trie_record_t *) (&records_buff[record_off]);
  switch (R->data_type) {
    case 131:
    case 130:
    case 128:
    case 129:
      break;
    default:
      return -1;
  }
  unsigned int h1 = R->data_type, h2 = R->data_type;
  int sz = R->data_len;
  if (R->flag_has_ttl) {
    sz += 4;
  }
  int i;
  for (i = 0; i < sz; i++) {
    h1 = (257 * h1 + R->data[i]) % records_hash_prime;
    h2 = (3 * h2 + R->data[i]) % (records_hash_prime - 1);
  }
  h2++;
  while (RH[h1] >= 0) {
    dns_trie_record_t *Q = (dns_trie_record_t *) (&records_buff[RH[h1]]);
    if (Q->data_type == R->data_type && Q->data_len == R->data_len && Q->flag_has_ttl == R->flag_has_ttl && !memcmp (Q->data, R->data, sz)) {
      return RH[h1];
    }
    h1 += h2;
    if (h1 >= records_hash_prime) {
      h1 -= records_hash_prime;
    }
  }
  if (tot_hashed_records >= max_hashed_records) {
    return -1;
  }
  tot_hashed_records++;
  RH[h1] = record_off;
  return -1;
}
