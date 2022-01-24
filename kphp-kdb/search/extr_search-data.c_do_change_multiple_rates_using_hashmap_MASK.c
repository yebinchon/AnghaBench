#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct hashmap_int_int {TYPE_1__* h; } ;
struct TYPE_8__ {TYPE_5__* cur; } ;
typedef  TYPE_2__ iheap_en_t ;
struct TYPE_9__ {int /*<<< orphan*/  item_id; } ;
struct TYPE_7__ {int value; } ;

/* Variables and functions */
 TYPE_2__* IHE ; 
 scalar_t__ Q_order ; 
 int /*<<< orphan*/  change_multiple_rates_set_rate_calls ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (TYPE_5__*,int) ; 
 scalar_t__ FUNC5 (struct hashmap_int_int*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  universal_tag_hash ; 

int FUNC8 (struct hashmap_int_int *HM, int rate_id) {
  Q_order = 0;
  FUNC0 ();

  if (!FUNC7 (IHE, universal_tag_hash, 1, 0)) {
    return 0;
  }

  iheap_en_t *H = IHE;
  while (H->cur) {
    int slot;
    int old_rate = FUNC4 (H->cur, rate_id);
    if (old_rate && FUNC5 (HM, old_rate, &slot)) {
      int new_rate = HM->h[slot].value;
      if (old_rate != new_rate) {
        change_multiple_rates_set_rate_calls++;
        FUNC1 (H->cur->item_id, rate_id, new_rate);
        FUNC2 ();
      }
    }
    FUNC6 (H);
  }
  FUNC3 ();
  return 1;
}