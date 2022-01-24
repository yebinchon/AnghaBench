#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct list_itemid_entry {struct list_itemid_entry* next; int /*<<< orphan*/  item_id; } ;
struct hashset_int {int dummy; } ;
struct TYPE_6__ {TYPE_4__* cur; } ;
typedef  TYPE_1__ iheap_en_t ;
struct TYPE_7__ {int /*<<< orphan*/  item_id; } ;

/* Variables and functions */
 TYPE_1__* IHE ; 
 scalar_t__ Q_order ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct list_itemid_entry*) ; 
 int FUNC2 (TYPE_4__*,int) ; 
 scalar_t__ FUNC3 (struct hashset_int*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  universal_tag_hash ; 
 struct list_itemid_entry* FUNC6 (int) ; 

int FUNC7 (struct hashset_int *HS, int rate_id) {
  struct list_itemid_entry *head = NULL, *tail = NULL, *p;
  Q_order = 0;
  FUNC0 ();

  if (!FUNC5 (IHE, universal_tag_hash, 1, 0)) {
    return 0;
  }

  iheap_en_t *H = IHE;
  while (H->cur) {
    int rate = FUNC2 (H->cur, rate_id);
    if (rate && FUNC3 (HS, rate)) {
      p = FUNC6 (sizeof (struct list_itemid_entry));
      p->item_id = H->cur->item_id;
      p->next = NULL;
      if (head) {
        tail->next = p;
        tail = p;
      } else {
        head = tail = p;
      }
    }
    FUNC4 (H);
  }
  return FUNC1 (head);
}