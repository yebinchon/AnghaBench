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
typedef  int /*<<< orphan*/  JSON_Object ;

/* Variables and functions */
 scalar_t__ JSONFailure ; 
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (char const**) ; 
 char* FUNC2 (char const**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 (char const**,size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static JSON_Value * FUNC11(const char **string, size_t nesting) {
    JSON_Value *output_value = FUNC8(), *new_value = NULL;
    JSON_Object *output_object = FUNC7(output_value);
    char *new_key = NULL;
    if (output_value == NULL || **string != '{') {
        return NULL;
    }
    FUNC0(string);
    FUNC1(string);
    if (**string == '}') { /* empty object */
        FUNC0(string);
        return output_value;
    }
    while (**string != '\0') {
        new_key = FUNC2(string);
        if (new_key == NULL) {
            FUNC6(output_value);
            return NULL;
        }
        FUNC1(string);
        if (**string != ':') {
            FUNC10(new_key);
            FUNC6(output_value);
            return NULL;
        }
        FUNC0(string);
        new_value = FUNC9(string, nesting);
        if (new_value == NULL) {
            FUNC10(new_key);
            FUNC6(output_value);
            return NULL;
        }
        if (FUNC3(output_object, new_key, new_value) == JSONFailure) {
            FUNC10(new_key);
            FUNC6(new_value);
            FUNC6(output_value);
            return NULL;
        }
        FUNC10(new_key);
        FUNC1(string);
        if (**string != ',') {
            break;
        }
        FUNC0(string);
        FUNC1(string);
    }
    FUNC1(string);
    if (**string != '}' || /* Trim object after parsing is over */
        FUNC5(output_object, FUNC4(output_object)) == JSONFailure) {
            FUNC6(output_value);
            return NULL;
    }
    FUNC0(string);
    return output_value;
}