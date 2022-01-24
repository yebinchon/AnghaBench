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
 char** FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static char **FUNC2(char **original, char *opt_char, char *opt_arg, char *opt_name) {
    int num_args;
    for (num_args = 0; original[num_args] != NULL; num_args++)
        ;
    char **result = FUNC0(num_args + 3, sizeof(char *));

    /* copy the arguments, but skip the ones we'll replace */
    int write_index = 0;
    bool skip_next = false;
    for (int i = 0; i < num_args; ++i) {
        if (skip_next) {
            skip_next = false;
            continue;
        }
        if (!FUNC1(original[i], opt_char) ||
            (opt_name && !FUNC1(original[i], opt_name))) {
            if (opt_arg)
                skip_next = true;
            continue;
        }
        result[write_index++] = original[i];
    }

    /* add the arguments we'll replace */
    result[write_index++] = opt_char;
    result[write_index] = opt_arg;

    return result;
}