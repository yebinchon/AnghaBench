#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__** items; } ;
struct TYPE_8__ {int /*<<< orphan*/ * parent; } ;
typedef  TYPE_1__ JSON_Value ;
typedef  int /*<<< orphan*/  JSON_Status ;
typedef  TYPE_2__ JSON_Array ;

/* Variables and functions */
 int /*<<< orphan*/  JSONFailure ; 
 int /*<<< orphan*/  JSONSuccess ; 
 size_t FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

JSON_Status FUNC4(JSON_Array *array, size_t ix, JSON_Value *value) {
    if (array == NULL || value == NULL || value->parent != NULL || ix >= FUNC0(array)) {
        return JSONFailure;
    }
    FUNC3(FUNC1(array, ix));
    value->parent = FUNC2(array);
    array->items[ix] = value;
    return JSONSuccess;
}