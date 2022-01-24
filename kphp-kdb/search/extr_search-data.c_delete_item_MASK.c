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
struct index_item {int extra; } ;
struct TYPE_5__ {int extra; int /*<<< orphan*/  words; } ;
typedef  TYPE_1__ item_t ;

/* Variables and functions */
 int FLAG_DELETED ; 
 int /*<<< orphan*/  ONLY_FIND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  del_item_instances ; 
 int /*<<< orphan*/  del_items ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct index_item* FUNC2 (long long) ; 
 int /*<<< orphan*/ * FUNC3 (struct index_item*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mod_items ; 

__attribute__((used)) static int FUNC6 (long long item_id) {
  item_t *I = FUNC4 (item_id, ONLY_FIND);
  struct index_item *II = FUNC2 (item_id);
  if (II) {
    II->extra |= FLAG_DELETED;
    mod_items++;
    FUNC0 (!I);
    FUNC5 ((item_t *) II, FUNC3 (II, 0));
    return 1;
  }
  if (!I || (I->extra & FLAG_DELETED)) { return 0; }
  FUNC1 (I);
  FUNC5 (I, &I->words);
  del_items++;
  del_item_instances++;
  return 1;
}