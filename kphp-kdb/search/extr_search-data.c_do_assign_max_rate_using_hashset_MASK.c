#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct hashset_ll {int dummy; } ;
struct TYPE_7__ {TYPE_4__* cur; } ;
typedef  TYPE_1__ iheap_en_t ;
struct TYPE_8__ {int /*<<< orphan*/  item_id; } ;

/* Variables and functions */
 TYPE_1__* IHE ; 
 scalar_t__ Q_order ; 
 int /*<<< orphan*/  assign_max_set_rate_calls ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 long long FUNC4 (TYPE_4__*) ; 
 int FUNC5 (TYPE_4__*,int) ; 
 scalar_t__ FUNC6 (struct hashset_ll*,long long const) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  universal_tag_hash ; 

int FUNC9 (struct hashset_ll *HS, int rate_id, int value) {
  Q_order = 0;
  FUNC0 ();

  if (!FUNC8 (IHE, universal_tag_hash, 1, 0)) {
    return 0;
  }

  iheap_en_t *H = IHE;
  while (H->cur) {
    const long long item_hash = FUNC4 (H->cur);
    if (item_hash && FUNC6 (HS, item_hash)) {
      int old_rate = FUNC5 (H->cur, rate_id);
      if (old_rate < value) {
        assign_max_set_rate_calls++;
        FUNC1 (H->cur->item_id, rate_id, value);
        FUNC2 ();
      }
    }
    FUNC7 (H);
  }
  FUNC3 ();
  return 1;
}