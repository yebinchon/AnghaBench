#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int n; TYPE_3__* by_hash; int /*<<< orphan*/  by_pos; } ;
typedef  TYPE_1__ watchcat_entry_t ;
typedef  int /*<<< orphan*/  searchy_pair_word_position_t ;
struct TYPE_6__ {int position; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_WATCHCAT_ENTRY_SIZE ; 
 int /*<<< orphan*/  cmp_spwp_by_hash ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__**,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

void FUNC3 (watchcat_entry_t *entry, const char *text, int len) {
  int positions = 0;
  int n = FUNC2 (text, len, entry->by_pos, MAX_WATCHCAT_ENTRY_SIZE, 0, 0, 0, &positions);
  entry->n = n;
  FUNC0 (&entry->by_hash, &entry->by_pos, sizeof (searchy_pair_word_position_t) * n);

  int i;
  for (i = 0; i < n; i++) {
    entry->by_hash[i].position = i;
  }

  FUNC1 (&entry->by_hash, n, sizeof (searchy_pair_word_position_t), cmp_spwp_by_hash);
}