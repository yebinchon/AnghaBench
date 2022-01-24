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
 size_t MAX_NESTING ; 
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 int /*<<< orphan*/ * FUNC1 (char const**,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (char const**) ; 
 int /*<<< orphan*/ * FUNC3 (char const**) ; 
 int /*<<< orphan*/ * FUNC4 (char const**) ; 
 int /*<<< orphan*/ * FUNC5 (char const**,size_t) ; 
 int /*<<< orphan*/ * FUNC6 (char const**) ; 

__attribute__((used)) static JSON_Value * FUNC7(const char **string, size_t nesting) {
    if (nesting > MAX_NESTING) {
        return NULL;
    }
    FUNC0(string);
    switch (**string) {
        case '{':
            return FUNC5(string, nesting + 1);
        case '[':
            return FUNC1(string, nesting + 1);
        case '\"':
            return FUNC6(string);
        case 'f': case 't':
            return FUNC2(string);
        case '-':
        case '0': case '1': case '2': case '3': case '4':
        case '5': case '6': case '7': case '8': case '9':
            return FUNC4(string);
        case 'n':
            return FUNC3(string);
        default:
            return NULL;
    }
}