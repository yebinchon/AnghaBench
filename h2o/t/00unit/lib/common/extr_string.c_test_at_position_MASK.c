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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    char buf[160];
    int ret;

    /* normal cases */
    ret = FUNC1(buf, FUNC0("hello\nworld\n"), 1, 1);
    FUNC2(ret == 0);
    FUNC2(FUNC3(buf, "hello\n^\n") == 0);

    ret = FUNC1(buf, FUNC0("hello\nworld\n"), 1, 5);
    FUNC2(ret == 0);
    FUNC2(FUNC3(buf, "hello\n    ^\n") == 0);

    ret = FUNC1(buf, FUNC0("hello\nworld\n"), 1, 6);
    FUNC2(ret == 0);
    FUNC2(FUNC3(buf, "hello\n     ^\n") == 0);

    ret = FUNC1(buf, FUNC0("hello\nworld\n"), 1, 7);
    FUNC2(ret == 0);
    FUNC2(FUNC3(buf, "hello\n     ^\n") == 0);

    ret = FUNC1(buf, FUNC0("hello\nworld\n"), 2, 1);
    FUNC2(ret == 0);
    FUNC2(FUNC3(buf, "world\n^\n") == 0);

    ret = FUNC1(buf, FUNC0("hello\nworld\n"), 2, 5);
    FUNC2(ret == 0);
    FUNC2(FUNC3(buf, "world\n    ^\n") == 0);

    ret = FUNC1(buf, FUNC0("hello\nworld\n"), 1, 7);
    FUNC2(ret == 0);
    FUNC2(FUNC3(buf, "hello\n     ^\n") == 0);

    ret = FUNC1(
        buf, FUNC0("_________1_________2_________3_________4_________5_________6_________7_________\nworld\n"), 1, 5);
    FUNC2(ret == 0);
    FUNC2(FUNC3(buf, "_________1_________2_________3_________4_________5_________6_________7______\n    ^\n") == 0);

    ret = FUNC1(
        buf, FUNC0("_________1_________2_________3_________4_________5_________6_________7_________\nworld\n"), 1, 60);
    FUNC2(ret == 0);
    FUNC2(FUNC3(buf, "_________3_________4_________5_________6_________7_________\n                                       ^\n") == 0);

    ret = FUNC1(buf, FUNC0("hello"), 1, 20);
    FUNC2(ret == 0);
    FUNC2(FUNC3(buf, "hello\n     ^\n") == 0);

    /* error cases */
    ret = FUNC1(buf, FUNC0("hello\nworld\n"), 0, 1);
    FUNC2(ret != 0);

    ret = FUNC1(buf, FUNC0("hello\nworld\n"), 1, 0);
    FUNC2(ret != 0);

    ret = FUNC1(buf, FUNC0("hello\nworld\n"), 4, 1);
    FUNC2(ret != 0);
}