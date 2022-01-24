#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  type; int /*<<< orphan*/ * parent; } ;
typedef  TYPE_1__ JSON_Value ;

/* Variables and functions */
 int /*<<< orphan*/  JSONNull ; 
 scalar_t__ FUNC0 (int) ; 

JSON_Value * FUNC1(void) {
    JSON_Value *new_value = (JSON_Value*)FUNC0(sizeof(JSON_Value));
    if (!new_value) {
        return NULL;
    }
    new_value->parent = NULL;
    new_value->type = JSONNull;
    return new_value;
}