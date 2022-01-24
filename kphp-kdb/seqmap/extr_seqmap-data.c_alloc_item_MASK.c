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
struct item {int key_len; int value_len; int time; int type; int /*<<< orphan*/  y; scalar_t__ value; void* key; } ;
struct TYPE_4__ {scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* item_tree ; 
 scalar_t__ items_count ; 
 int items_memory ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*,int const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct item*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC4 (TYPE_1__*,struct item*) ; 
 void* FUNC5 (int) ; 

struct item *FUNC6 (int key_len, const int *key, int type, int value_len) {
  FUNC0 (value_len == 0 || value_len == -1);
  struct item *I = FUNC5 (sizeof (*I));
  FUNC3 (I, 0, sizeof (*I));
  items_memory += sizeof (*I);
  I->key_len = key_len;
  I->key = FUNC5 (4 * key_len);
  FUNC2 (I->key, key, 4 * key_len);
  items_memory += key_len * 4;
  I->value_len = value_len;
  I->value = 0;
  items_count ++;
  I->time = -1;
  I->type = type;
  I->y = FUNC1 ();

  item_tree = FUNC4 (item_tree, I);
  FUNC0 (item_tree->size == items_count);
  return I;
}