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
struct test_t {int failed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 struct test_t* cur_tests ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  test_level ; 

void FUNC3(const char *name, void (*cb)(void))
{
    struct test_t test = {}, *parent_tests;

    parent_tests = cur_tests;
    cur_tests = &test;
    ++test_level;

    FUNC2("Subtest: %s", name);

    cb();

    FUNC1();

    --test_level;
    cur_tests = parent_tests;
    if (test.failed)
        cur_tests->failed = 1;
    FUNC0(! test.failed, "%s", name);
}