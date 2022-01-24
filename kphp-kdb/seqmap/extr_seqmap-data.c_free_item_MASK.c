#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct item {int key_len; int value_len; struct item* value; struct item* key; } ;
struct TYPE_4__ {scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* item_tree ; 
 scalar_t__ items_count ; 
 int items_memory ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int,struct item*) ; 
 int /*<<< orphan*/  FUNC2 (struct item*,int) ; 

void FUNC3 (struct item *I) {
  item_tree = FUNC1 (item_tree, I->key_len, I->key);
  items_count --;
  FUNC0 (item_tree ? (item_tree->size == items_count) : (!items_count));
  if (I->key_len) {
    FUNC2 (I->key, 4 * I->key_len);
    items_memory -= 4 * I->key_len;
  }
  if (I->value_len) {
    FUNC2 (I->value, 4 * I->value_len);
    items_memory -= 4 * I->value_len;
  }
  FUNC2 (I, sizeof (*I));
  items_memory -= sizeof (*I);
}