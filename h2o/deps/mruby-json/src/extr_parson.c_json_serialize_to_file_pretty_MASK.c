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
typedef  int /*<<< orphan*/  JSON_Status ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  JSONFailure ; 
 int /*<<< orphan*/  JSONSuccess ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/  const*) ; 

JSON_Status FUNC5(const JSON_Value *value, const char *filename) {
    JSON_Status return_code = JSONSuccess;
    FILE *fp = NULL;
    char *serialized_string = FUNC4(value);
    if (serialized_string == NULL) {
        return JSONFailure;
    }
    fp = FUNC1(filename, "w");
    if (fp == NULL) {
        FUNC3(serialized_string);
        return JSONFailure;
    }
    if (FUNC2(serialized_string, fp) == EOF) {
        return_code = JSONFailure;
    }
    if (FUNC0(fp) == EOF) {
        return_code = JSONFailure;
    }
    FUNC3(serialized_string);
    return return_code;
}