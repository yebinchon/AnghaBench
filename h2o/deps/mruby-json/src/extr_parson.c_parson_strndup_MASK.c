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

/* Variables and functions */
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 

__attribute__((used)) static char * FUNC2(const char *string, size_t n) {
    char *output_string = (char*)FUNC0(n + 1);
    if (!output_string) {
        return NULL;
    }
    output_string[n] = '\0';
    FUNC1(output_string, string, n);
    return output_string;
}