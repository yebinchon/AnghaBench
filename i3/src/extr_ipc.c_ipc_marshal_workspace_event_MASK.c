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
typedef  int /*<<< orphan*/  yajl_gen ;
typedef  int /*<<< orphan*/  Con ;

/* Variables and functions */
 int /*<<< orphan*/  LC_NUMERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  map_close ; 
 int /*<<< orphan*/  map_open ; 
 int /*<<< orphan*/  null ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

yajl_gen FUNC5(const char *change, Con *current, Con *old) {
    FUNC1(LC_NUMERIC, "C");
    yajl_gen gen = FUNC3();

    FUNC2(map_open);

    FUNC4("change");
    FUNC4(change);

    FUNC4("current");
    if (current == NULL)
        FUNC2(null);
    else
        FUNC0(gen, current, false);

    FUNC4("old");
    if (old == NULL)
        FUNC2(null);
    else
        FUNC0(gen, old, false);

    FUNC2(map_close);

    FUNC1(LC_NUMERIC, "");

    return gen;
}