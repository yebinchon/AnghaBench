
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LISTS_PRIME ;
 int List ;
 int am_choose_hash_prime (int) ;
 int lists_prime ;
 int malloc (int) ;
 double max_lists ;
 int memset (int ,int ,int) ;

void init_hash_table (int x) {
  x = (int)x * 1.5;
  lists_prime = am_choose_hash_prime ((x <= LISTS_PRIME ? LISTS_PRIME : x));
  List = malloc (lists_prime * sizeof (void *));
  memset (List, 0, lists_prime * sizeof (void *));
  max_lists = 0.7 * lists_prime;
}
