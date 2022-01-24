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
struct TYPE_4__ {int /*<<< orphan*/ ** items; } ;
typedef  int /*<<< orphan*/  JSON_Value ;
typedef  TYPE_1__ JSON_Array ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__ const*) ; 

JSON_Value * FUNC1(const JSON_Array *array, size_t index) {
    if (array == NULL || index >= FUNC0(array)) {
        return NULL;
    }
    return array->items[index];
}