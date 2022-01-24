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
struct TYPE_6__ {int /*<<< orphan*/  array; TYPE_2__* string; int /*<<< orphan*/  object; } ;
struct TYPE_7__ {TYPE_1__ value; } ;
typedef  TYPE_2__ JSON_Value ;

/* Variables and functions */
#define  JSONArray 130 
#define  JSONObject 129 
#define  JSONString 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void FUNC4(JSON_Value *value) {
    switch (FUNC2(value)) {
        case JSONObject:
            FUNC1(value->value.object);
            break;
        case JSONString:
            FUNC3(value->value.string);
            break;
        case JSONArray:
            FUNC0(value->value.array);
            break;
        default:
            break;
    }
    FUNC3(value);
}