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
 size_t FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,char const*,size_t) ; 

__attribute__((used)) static JSON_Value * FUNC3(const char **string) {
    size_t true_token_size = FUNC0("true");
    size_t false_token_size = FUNC0("false");
    if (FUNC2("true", *string, true_token_size) == 0) {
        *string += true_token_size;
        return FUNC1(1);
    } else if (FUNC2("false", *string, false_token_size) == 0) {
        *string += false_token_size;
        return FUNC1(0);
    }
    return NULL;
}