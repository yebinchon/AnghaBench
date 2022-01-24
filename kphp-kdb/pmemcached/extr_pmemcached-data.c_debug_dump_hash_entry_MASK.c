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
struct TYPE_3__ {int exp_time; scalar_t__ flags; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  accum_value; int /*<<< orphan*/  data_len; int /*<<< orphan*/  data; int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ hash_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC2 (hash_entry_t *E) {
  FUNC1 (stderr, "E->key = "); FUNC0 (E->key, E->key_len);
  FUNC1 (stderr, "E->data = "); FUNC0 (E->data, E->data_len);
  FUNC1 (stderr, "flags = %d, exp_time = %d, accum_value = %d, timestamp = %d\n", (int) E->flags, E->exp_time, E->accum_value, E->timestamp);
  //char need_merging;
}