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
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 unsigned long FUNC2 (char const*,int /*<<< orphan*/ *,int) ; 

int FUNC3(int argc, const char *argv[]) {
    if (argc != 2) {
        FUNC1("argc is %d\n", argc);
        FUNC1("please specify a number to fibbonaci\n");
        return 1;
    }
    unsigned long n = FUNC2(argv[1], NULL, 10);
    FUNC1("%lu\n", FUNC0(n));
    return 0;
}