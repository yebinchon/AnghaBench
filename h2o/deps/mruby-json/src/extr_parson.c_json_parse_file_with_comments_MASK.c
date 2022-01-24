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
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 

JSON_Value * FUNC3(const char *filename) {
    char *file_contents = FUNC2(filename);
    JSON_Value *output_value = NULL;
    if (file_contents == NULL) {
        return NULL;
    }
    output_value = FUNC0(file_contents);
    FUNC1(file_contents);
    return output_value;
}