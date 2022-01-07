
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash_table ;


 int chg_del (int ,int) ;
 int htbl_find_or_create (int *,long long) ;

void htbl_del (hash_table *table, long long key, int val) {
  chg_del (htbl_find_or_create (table, key), val * 2 + 1);
}
