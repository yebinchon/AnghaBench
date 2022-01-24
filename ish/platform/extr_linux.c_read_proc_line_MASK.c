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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 size_t FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*,char*,size_t) ; 

__attribute__((used)) static void FUNC8(const char *file, const char *name, char *buf) {
    FILE *f = FUNC5(file, "r");
    if (f == NULL) FUNC0(file);
    do {
        FUNC4(buf, 1234, f);
        if (FUNC3(f))
            FUNC1("could not find proc line %s", name);
    } while (!(FUNC7(name, buf, FUNC6(name)) == 0 && buf[FUNC6(name)] == ' '));
    FUNC2(f);
}