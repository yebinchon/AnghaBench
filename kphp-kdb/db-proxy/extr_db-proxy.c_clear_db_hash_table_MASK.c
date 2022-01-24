#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct db_table {void* fwd_first; scalar_t__ table_name_len; int /*<<< orphan*/  table_name; } ;
typedef  int /*<<< orphan*/  db_hash_table_t ;
typedef  struct db_table* db_hash_table_p ;

/* Variables and functions */
 int HASH_PRIME ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct db_table*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC3 (db_hash_table_p db_hash) {
  int i;
  for (i = 0; i < HASH_PRIME; i++) {
    struct db_table *table = db_hash + i;
    if (table->table_name_len) {
      FUNC2 (table->table_name, table->table_name_len + 1);
    }
    if (table->fwd_first && table->fwd_first != (void *) -1) {
      FUNC0 (table->fwd_first);
    }
  }
  FUNC1 (db_hash, 0, sizeof (db_hash_table_t));
}