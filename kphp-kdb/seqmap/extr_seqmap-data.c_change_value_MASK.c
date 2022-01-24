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
struct item {int value_len; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int FUNC0 (struct item*) ; 
 int NODE_TYPE_MINUS ; 
 int NODE_TYPE_PLUS ; 
 int NODE_TYPE_UNSURE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct item*,int) ; 
 int items_memory ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6 (struct item *I, int value_len, int *value) {
  if (I->value_len >= 0) {
    FUNC4 (I->value, 4 * I->value_len);
    items_memory -= 4 * I->value_len;
  } else {
    FUNC1 (FUNC0 (I) == (NODE_TYPE_MINUS | NODE_TYPE_UNSURE));
    FUNC2 (I, NODE_TYPE_PLUS | NODE_TYPE_UNSURE);
  }
  I->value_len = value_len;
  I->value = FUNC5 (4 * value_len);
  FUNC3 (I->value, value, 4 * value_len);
  items_memory += 4 * value_len;
}