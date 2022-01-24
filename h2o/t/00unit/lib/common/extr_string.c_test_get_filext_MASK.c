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
struct TYPE_3__ {int /*<<< orphan*/ * base; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
    h2o_iovec_t ext;

    ext = FUNC1(FUNC0("/abc.txt"));
    FUNC3(FUNC2(ext.base, ext.len, FUNC0("txt")));
    ext = FUNC1(FUNC0("/abc.txt.gz"));
    FUNC3(FUNC2(ext.base, ext.len, FUNC0("gz")));
    ext = FUNC1(FUNC0("/abc."));
    FUNC3(FUNC2(ext.base, ext.len, FUNC0("")));
    ext = FUNC1(FUNC0("/abc"));
    FUNC3(ext.base == NULL);
    ext = FUNC1(FUNC0("/abc.def/abc"));
    FUNC3(ext.base == NULL);
    ext = FUNC1(FUNC0("/abc.def/"));
    FUNC3(ext.base == NULL);
}