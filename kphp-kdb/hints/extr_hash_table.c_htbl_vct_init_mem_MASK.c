#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hash_entry_vct ;
struct TYPE_3__ {struct TYPE_3__* next_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 TYPE_1__* FUNC2 (int) ; 
 int htbl_vct_allocated_cnt ; 
 TYPE_1__* htbl_vct_free_entries ; 
 int /*<<< orphan*/  htbl_vct_memory ; 

void FUNC3 (int n) {
  FUNC0 (htbl_vct_free_entries == NULL);
  FUNC0 (n > 0);

  htbl_vct_memory -= FUNC1();
  htbl_vct_free_entries = FUNC2 (sizeof (hash_entry_vct) * n);
  FUNC0 (htbl_vct_free_entries != NULL);
  htbl_vct_memory += FUNC1();

  htbl_vct_allocated_cnt += n;

  int i;
  for (i = 0; i + 1 < n; i++) {
    htbl_vct_free_entries[i].next_entry = &htbl_vct_free_entries[i + 1];
  }
  htbl_vct_free_entries[n - 1].next_entry = NULL;
}