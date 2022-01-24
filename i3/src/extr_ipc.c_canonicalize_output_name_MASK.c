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
typedef  int /*<<< orphan*/  Output ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static char *FUNC3(char *name) {
    /* Do not canonicalize special output names. */
    if (FUNC2(name, "primary") == 0) {
        return name;
    }
    Output *output = FUNC0(name, false);
    return output ? FUNC1(output) : name;
}