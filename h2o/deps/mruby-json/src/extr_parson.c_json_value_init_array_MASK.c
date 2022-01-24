#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  array; } ;
struct TYPE_7__ {TYPE_1__ value; int /*<<< orphan*/  type; int /*<<< orphan*/ * parent; } ;
typedef  TYPE_2__ JSON_Value ;

/* Variables and functions */
 int /*<<< orphan*/  JSONArray ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int) ; 

JSON_Value * FUNC3(void) {
    JSON_Value *new_value = (JSON_Value*)FUNC2(sizeof(JSON_Value));
    if (!new_value) {
        return NULL;
    }
    new_value->parent = NULL;
    new_value->type = JSONArray;
    new_value->value.array = FUNC0(new_value);
    if (!new_value->value.array) {
        FUNC1(new_value);
        return NULL;
    }
    return new_value;
}