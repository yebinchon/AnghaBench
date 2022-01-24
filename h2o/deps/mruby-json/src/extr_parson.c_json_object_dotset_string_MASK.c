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
typedef  int /*<<< orphan*/  JSON_Value ;
typedef  scalar_t__ JSON_Status ;
typedef  int /*<<< orphan*/  JSON_Object ;

/* Variables and functions */
 scalar_t__ JSONFailure ; 
 scalar_t__ JSONSuccess ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 

JSON_Status FUNC3(JSON_Object *object, const char *name, const char *string) {
    JSON_Value *value = FUNC2(string);
    if (value == NULL) {
        return JSONFailure;
    }
    if (FUNC0(object, name, value) == JSONFailure) {
        FUNC1(value);
        return JSONFailure;
    }
    return JSONSuccess;
}