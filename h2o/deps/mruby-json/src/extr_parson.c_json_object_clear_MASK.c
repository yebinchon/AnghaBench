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
struct TYPE_4__ {scalar_t__ count; int /*<<< orphan*/ * values; int /*<<< orphan*/ * names; } ;
typedef  int /*<<< orphan*/  JSON_Status ;
typedef  TYPE_1__ JSON_Object ;

/* Variables and functions */
 int /*<<< orphan*/  JSONFailure ; 
 int /*<<< orphan*/  JSONSuccess ; 
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

JSON_Status FUNC3(JSON_Object *object) {
    size_t i = 0;
    if (object == NULL) {
        return JSONFailure;
    }
    for (i = 0; i < FUNC0(object); i++) {
        FUNC2(object->names[i]);
        FUNC1(object->values[i]);
    }
    object->count = 0;
    return JSONSuccess;
}