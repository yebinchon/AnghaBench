#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
    h2o_iovec_t t;

    t = FUNC2(FUNC0(""));
    FUNC3(FUNC1(t.base, t.len, FUNC0("")));
    t = FUNC2(FUNC0("hello world"));
    FUNC3(FUNC1(t.base, t.len, FUNC0("hello world")));
    t = FUNC2(FUNC0("   hello world"));
    FUNC3(FUNC1(t.base, t.len, FUNC0("hello world")));
    t = FUNC2(FUNC0("hello world   "));
    FUNC3(FUNC1(t.base, t.len, FUNC0("hello world")));
    t = FUNC2(FUNC0("   hello world   "));
    FUNC3(FUNC1(t.base, t.len, FUNC0("hello world")));
    t = FUNC2(FUNC0("     "));
    FUNC3(FUNC1(t.base, t.len, FUNC0("")));
}