#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * object; } ;
struct TYPE_6__ {TYPE_1__ value; } ;
typedef  TYPE_2__ JSON_Value ;
typedef  int /*<<< orphan*/  JSON_Object ;

/* Variables and functions */
 scalar_t__ JSONObject ; 
 scalar_t__ FUNC0 (TYPE_2__ const*) ; 

JSON_Object * FUNC1(const JSON_Value *value) {
    return FUNC0(value) == JSONObject ? value->value.object : NULL;
}