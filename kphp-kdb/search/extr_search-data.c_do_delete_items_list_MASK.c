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
struct list_itemid_entry {struct list_itemid_entry* next; int /*<<< orphan*/  item_id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct list_itemid_entry*,int) ; 

int FUNC5 (struct list_itemid_entry *head) {
  struct list_itemid_entry *p;
  int tot_deleted = 0;
  for (p = head; p != NULL; p = head) {
    if (FUNC0 (p->item_id)) {
      tot_deleted++;
      FUNC1 ();
    }
    head = p->next;
    FUNC4 (p, sizeof (struct list_itemid_entry));
  }
  FUNC3 (1, "%d items was deleted.\n", tot_deleted);
  FUNC2 ();
  return tot_deleted;
}