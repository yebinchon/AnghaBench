#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
typedef  TYPE_2__ h2o_iovec_t ;
struct TYPE_11__ {int size; } ;
struct TYPE_13__ {TYPE_1__ keys; } ;
typedef  TYPE_3__ h2o_http2_casper_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_2__ FUNC5 (TYPE_3__*) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(void)
{
    h2o_http2_casper_t *casper;

    casper = FUNC3(13, 6);
    FUNC6(casper, FUNC0("/index.html"), 1);
    h2o_iovec_t cookie1 = FUNC5(casper);
    cookie1 = FUNC7(NULL, cookie1.base, cookie1.len);
    FUNC4(casper);

    casper = FUNC3(13, 6);
    FUNC6(casper, FUNC0("/index.php"), 1);
    h2o_iovec_t cookie2 = FUNC5(casper);
    cookie2 = FUNC7(NULL, cookie2.base, cookie2.len);
    FUNC4(casper);

    casper = FUNC3(13, 6);
    FUNC2(casper, cookie1.base, FUNC1(cookie1.base, cookie1.len));
    FUNC2(casper, cookie1.base, FUNC1(cookie1.base, cookie1.len));
    FUNC8(casper->keys.size == 1);
    FUNC8(FUNC6(casper, FUNC0("/index.html"), 0) == 1);
    FUNC2(casper, cookie2.base, FUNC1(cookie2.base, cookie2.len));
    FUNC8(casper->keys.size == 2);
    FUNC8(FUNC6(casper, FUNC0("/index.html"), 0) == 1);
    FUNC8(FUNC6(casper, FUNC0("/index.php"), 0) == 1);
    FUNC4(casper);
}