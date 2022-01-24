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
struct TYPE_6__ {TYPE_4__* cur; } ;
typedef  TYPE_1__ iheap_en_t ;
struct TYPE_7__ {int /*<<< orphan*/  item_id; } ;

/* Variables and functions */
 TYPE_1__* IHE ; 
 scalar_t__ Q_order ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct list_itemid_entry*) ; 
 long long FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  universal_tag_hash ; 
 struct list_itemid_entry* FUNC5 (int) ; 

int FUNC6 (long long hash) {
  struct list_itemid_entry *head = NULL, *tail = NULL, *p;
  if (hash == 0) {
    return 0;
  }
  Q_order = 0;
  FUNC0 ();

  if (!FUNC4 (IHE, universal_tag_hash, 1, 0)) {
    return 0;
  }

  iheap_en_t *H = IHE;
  while (H->cur) {
    if (FUNC2 (H->cur) == hash) {
      p = FUNC5 (sizeof (struct list_itemid_entry));
      p->item_id = H->cur->item_id;
      p->next = NULL;
      if (head) {
        tail->next = p;
        tail = p;
      } else {
        head = tail = p;
      }
    }
    FUNC3 (H);
  }
  return FUNC1 (head);
}