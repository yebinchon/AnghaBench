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
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 

__attribute__((used)) static void FUNC5(char *code, const char *name) {
    FUNC0("%-6s before: %d expected 1\n", name, ((int (*)()) code)());
    code[1] = 2;
    FUNC0("%-6s after:  %d expected 2\n", name, ((int (*)()) code)());
}