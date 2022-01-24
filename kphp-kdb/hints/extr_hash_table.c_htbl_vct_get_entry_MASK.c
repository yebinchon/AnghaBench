#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* hash_entry_vct_ptr ;
struct TYPE_5__ {struct TYPE_5__* next_entry; } ;
typedef  TYPE_1__ hash_entry_vct ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int htbl_vct_allocated_cnt ; 
 TYPE_1__* htbl_vct_free_entries ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

hash_entry_vct_ptr FUNC2 (void) {
  if (htbl_vct_free_entries == NULL) {
    if (1 <= htbl_vct_allocated_cnt && htbl_vct_allocated_cnt < 10000) {
      FUNC1 (htbl_vct_allocated_cnt);
    } else {
      FUNC1 (10000);
    }
  }

  FUNC0 (htbl_vct_free_entries != NULL);

  hash_entry_vct *res = htbl_vct_free_entries;
  htbl_vct_free_entries = htbl_vct_free_entries->next_entry;
  res->next_entry = NULL;

  return res;
}