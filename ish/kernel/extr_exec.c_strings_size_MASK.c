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
 size_t FUNC0 (char const*) ; 

__attribute__((used)) static size_t FUNC1(const char *args) {
    const char *args_end = args;
    size_t arg_len;
    do {
        arg_len = FUNC0(args_end);
        args_end += arg_len + 1;
    } while (arg_len != 0);
    return args_end - args;
}