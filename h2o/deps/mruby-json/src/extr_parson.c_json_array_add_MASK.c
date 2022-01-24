#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int count; int capacity; TYPE_1__** items; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
typedef  TYPE_1__ JSON_Value ;
typedef  scalar_t__ JSON_Status ;
typedef  TYPE_2__ JSON_Array ;

/* Variables and functions */
 scalar_t__ JSONFailure ; 
 scalar_t__ JSONSuccess ; 
 size_t FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STARTING_CAPACITY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,size_t) ; 

__attribute__((used)) static JSON_Status FUNC3(JSON_Array *array, JSON_Value *value) {
    if (array->count >= array->capacity) {
        size_t new_capacity = FUNC0(array->capacity * 2, STARTING_CAPACITY);
        if (FUNC2(array, new_capacity) == JSONFailure) {
            return JSONFailure;
        }
    }
    value->parent = FUNC1(array);
    array->items[array->count] = value;
    array->count++;
    return JSONSuccess;
}