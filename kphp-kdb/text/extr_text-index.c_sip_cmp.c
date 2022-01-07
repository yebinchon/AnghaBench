
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct search_index_pair {scalar_t__ crc; scalar_t__ idx; } ;



__attribute__((used)) static inline int sip_cmp (struct search_index_pair *a, struct search_index_pair *b) {
  if (a->crc < b->crc) {
    return -1;
  } else if (a->crc > b->crc) {
    return 1;
  } else if (a->idx < b->idx) {
    return -1;
  } else if (a->idx > b->idx) {
    return 1;
  }
  return 0;
}
