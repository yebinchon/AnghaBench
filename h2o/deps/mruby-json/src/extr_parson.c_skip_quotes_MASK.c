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

/* Variables and functions */
 int /*<<< orphan*/  JSONFailure ; 
 int /*<<< orphan*/  JSONSuccess ; 
 int /*<<< orphan*/  FUNC0 (char const**) ; 

__attribute__((used)) static JSON_Status FUNC1(const char **string) {
    if (**string != '\"') {
        return JSONFailure;
    }
    FUNC0(string);
    while (**string != '\"') {
        if (**string == '\0') {
            return JSONFailure;
        } else if (**string == '\\') {
            FUNC0(string);
            if (**string == '\0') {
                return JSONFailure;
            }
        }
        FUNC0(string);
    }
    FUNC0(string);
    return JSONSuccess;
}