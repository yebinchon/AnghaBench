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
typedef  int /*<<< orphan*/  h2o_url_t ;
typedef  int /*<<< orphan*/  h2o_mem_pool_t ;
struct TYPE_3__ {scalar_t__ len; int /*<<< orphan*/ * base; } ;
typedef  TYPE_1__ h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  H2O_URL_SCHEME_HTTPS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 TYPE_1__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
    h2o_url_t upstream;
    h2o_mem_pool_t pool;
    h2o_iovec_t ret;

    FUNC5(FUNC0("http://realhost:81/real/"), &upstream);

    FUNC3(&pool);

    ret = FUNC7(&pool, FUNC0("http://realhost:81/real/abc"), &upstream, &H2O_URL_SCHEME_HTTPS,
                           FUNC1(FUNC0("vhost:8443")), FUNC1(FUNC0("/virtual/")));
    FUNC6(FUNC4(ret.base, ret.len, FUNC0("https://vhost:8443/virtual/abc")));
    ret = FUNC7(&pool, FUNC0("http://realhost:81/other/abc"), &upstream, &H2O_URL_SCHEME_HTTPS,
                           FUNC1(FUNC0("vhost:8443")), FUNC1(FUNC0("/virtual/")));
    FUNC6(ret.base == NULL);
    FUNC6(ret.len == 0);

    FUNC2(&pool);
}