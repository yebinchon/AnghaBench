#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int data_len; int delay; } ;
struct TYPE_5__ {scalar_t__ index_entry; int /*<<< orphan*/  hash_entry; TYPE_1__ data; int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int DELAY_INFINITY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* current_cache ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pmct_set ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

int FUNC5 (void) {
  if (current_cache->data.data_len == -1) {
    return -1;
  }
  FUNC3 (current_cache->key, current_cache->key_len);
  int delay = current_cache->data.delay;
  if (current_cache->index_entry != 0) {
    FUNC4 (pmct_set, 0, -1, 0, -1);
  } else {
    FUNC1 (current_cache->hash_entry);
  }
  FUNC0 (current_cache);
  if (delay < FUNC2() && delay != DELAY_INFINITY) {
    return -1;
  }
  return 1;
}