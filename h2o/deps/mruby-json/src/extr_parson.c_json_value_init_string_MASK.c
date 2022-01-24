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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,size_t) ; 
 size_t FUNC4 (char const*) ; 

JSON_Value * FUNC5(const char *string) {
    char *copy = NULL;
    JSON_Value *value;
    size_t string_len = 0;
    if (string == NULL) {
        return NULL;
    }
    string_len = FUNC4(string);
    if (!FUNC0(string, string_len)) {
        return NULL;
    }
    copy = FUNC3(string, string_len);
    if (copy == NULL) {
        return NULL;
    }
    value = FUNC1(copy);
    if (value == NULL) {
        FUNC2(copy);
    }
    return value;
}