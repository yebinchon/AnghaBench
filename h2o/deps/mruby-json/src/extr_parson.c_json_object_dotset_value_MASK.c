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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char const*,int) ; 
 char* FUNC7 (char const*,char) ; 

JSON_Status FUNC8(JSON_Object *object, const char *name, JSON_Value *value) {
    const char *dot_pos = NULL;
    char *current_name = NULL;
    JSON_Object *temp_obj = NULL;
    JSON_Value *new_value = NULL;
    if (object == NULL || name == NULL || value == NULL) {
        return JSONFailure;
    }
    dot_pos = FUNC7(name, '.');
    if (dot_pos == NULL) {
        return FUNC2(object, name, value);
    } else {
        current_name = FUNC6(name, dot_pos - name);
        temp_obj = FUNC1(object, current_name);
        if (temp_obj == NULL) {
            new_value = FUNC4();
            if (new_value == NULL) {
                FUNC5(current_name);
                return JSONFailure;
            }
            if (FUNC0(object, current_name, new_value) == JSONFailure) {
                FUNC3(new_value);
                FUNC5(current_name);
                return JSONFailure;
            }
            temp_obj = FUNC1(object, current_name);
        }
        FUNC5(current_name);
        return FUNC8(temp_obj, dot_pos + 1, value);
    }
}