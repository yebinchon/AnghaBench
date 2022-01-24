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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3(const char *title, const uint8_t *p, size_t l)
{
    FUNC0(stderr, "%s (%zu bytes):\n", title, l);

    while (l != 0) {
        int i;
        FUNC2("   ", stderr);
        for (i = 0; i < 16; ++i) {
            FUNC0(stderr, " %2s", *p++);
            if (--l == 0)
                break;
        }
        FUNC1('\n', stderr);
    }
}