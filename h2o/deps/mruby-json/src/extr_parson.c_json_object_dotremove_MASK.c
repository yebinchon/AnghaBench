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
typedef  int /*<<< orphan*/  JSON_Status ;
typedef  int /*<<< orphan*/  JSON_Object ;

/* Variables and functions */
 int /*<<< orphan*/  JSONFailure ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,int) ; 
 char* FUNC4 (char const*,char) ; 

JSON_Status FUNC5(JSON_Object *object, const char *name) {
    const char *dot_pos = FUNC4(name, '.');
    char *current_name = NULL;
    JSON_Object *temp_obj = NULL;
    if (dot_pos == NULL) {
        return FUNC1(object, name);
    } else {
        current_name = FUNC3(name, dot_pos - name);
        temp_obj = FUNC0(object, current_name);
        FUNC2(current_name);
        if (temp_obj == NULL) {
            return JSONFailure;
        }
        return FUNC5(temp_obj, dot_pos + 1);
    }
}