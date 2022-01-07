
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db_table {void* fwd_first; scalar_t__ table_name_len; int table_name; } ;
typedef int db_hash_table_t ;
typedef struct db_table* db_hash_table_p ;


 int HASH_PRIME ;
 int clear_fwd_chain (void*) ;
 int memset (struct db_table*,int ,int) ;
 int zfree (int ,scalar_t__) ;

void clear_db_hash_table (db_hash_table_p db_hash) {
  int i;
  for (i = 0; i < HASH_PRIME; i++) {
    struct db_table *table = db_hash + i;
    if (table->table_name_len) {
      zfree (table->table_name, table->table_name_len + 1);
    }
    if (table->fwd_first && table->fwd_first != (void *) -1) {
      clear_fwd_chain (table->fwd_first);
    }
  }
  memset (db_hash, 0, sizeof (db_hash_table_t));
}
