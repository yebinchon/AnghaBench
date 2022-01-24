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
typedef  int /*<<< orphan*/  JSON_Array ;

/* Variables and functions */
 scalar_t__ JSONFailure ; 
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (char const**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (char const**,size_t) ; 

__attribute__((used)) static JSON_Value * FUNC9(const char **string, size_t nesting) {
    JSON_Value *output_value = FUNC7(), *new_array_value = NULL;
    JSON_Array *output_array = FUNC6(output_value);
    if (!output_value || **string != '[') {
        return NULL;
    }
    FUNC0(string);
    FUNC1(string);
    if (**string == ']') { /* empty array */
        FUNC0(string);
        return output_value;
    }
    while (**string != '\0') {
        new_array_value = FUNC8(string, nesting);
        if (new_array_value == NULL) {
            FUNC5(output_value);
            return NULL;
        }
        if (FUNC2(output_array, new_array_value) == JSONFailure) {
            FUNC5(new_array_value);
            FUNC5(output_value);
            return NULL;
        }
        FUNC1(string);
        if (**string != ',') {
            break;
        }
        FUNC0(string);
        FUNC1(string);
    }
    FUNC1(string);
    if (**string != ']' || /* Trim array after parsing is over */
        FUNC4(output_array, FUNC3(output_array)) == JSONFailure) {
            FUNC5(output_value);
            return NULL;
    }
    FUNC0(string);
    return output_value;
}