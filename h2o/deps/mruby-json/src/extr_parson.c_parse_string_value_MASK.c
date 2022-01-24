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
 char* FUNC0 (char const**) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static JSON_Value * FUNC3(const char **string) {
    JSON_Value *value = NULL;
    char *new_string = FUNC0(string);
    if (new_string == NULL) {
        return NULL;
    }
    value = FUNC1(new_string);
    if (value == NULL) {
        FUNC2(new_string);
        return NULL;
    }
    return value;
}