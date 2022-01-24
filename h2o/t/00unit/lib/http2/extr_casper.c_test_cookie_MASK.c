#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ len; int /*<<< orphan*/ * base; } ;
typedef  TYPE_1__ h2o_iovec_t ;
typedef  int /*<<< orphan*/  h2o_http2_casper_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(void)
{
    h2o_http2_casper_t *casper;

    casper = FUNC3(13, 6);

    h2o_iovec_t cookie = FUNC5(casper);
    FUNC8(cookie.base == NULL);
    FUNC8(cookie.len == 0);

    FUNC6(casper, FUNC0("/index.html"), 1);
    cookie = FUNC5(casper);
    FUNC8(cookie.len != 0);
    cookie = FUNC7(NULL, cookie.base, cookie.len);
    FUNC4(casper);
    casper = FUNC3(13, 6);

    FUNC2(casper, cookie.base, FUNC1(cookie.base, cookie.len));
    FUNC8(FUNC6(casper, FUNC0("/index.html"), 0) == 1);
    FUNC8(FUNC6(casper, FUNC0("/index.php"), 0) == 0);
    FUNC6(casper, FUNC0("/index.php"), 1);

    FUNC6(casper, FUNC0("/index.html"), 1);
    cookie = FUNC5(casper);
    FUNC8(cookie.len != 0);
    cookie = FUNC7(NULL, cookie.base, cookie.len);

    FUNC4(casper);
    casper = FUNC3(13, 6);

    FUNC2(casper, cookie.base, FUNC1(cookie.base, cookie.len));
    FUNC8(FUNC6(casper, FUNC0("/index.html"), 0) == 1);
    FUNC8(FUNC6(casper, FUNC0("/index.php"), 0) == 1);

    FUNC4(casper);
}