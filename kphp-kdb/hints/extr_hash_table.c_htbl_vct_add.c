
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash_table_vct ;


 int htbl_vct_find_or_create (int *,long long) ;
 int vct_set_add (int ,int) ;

void htbl_vct_add (hash_table_vct *table, long long key, int val) {
  vct_set_add (htbl_vct_find_or_create (table, key), val);
}
