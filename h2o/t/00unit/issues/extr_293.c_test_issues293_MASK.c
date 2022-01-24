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
typedef  int /*<<< orphan*/  h2o_globalconf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  H2O_URL_SCHEME_HTTP ; 
 int /*<<< orphan*/  H2O_URL_SCHEME_HTTPS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  test_loop ; 

void FUNC8()
{
    h2o_globalconf_t globalconf;

    FUNC3(&globalconf);

    /* register two hosts, using 80 and 443 */
    FUNC7(&globalconf, FUNC6(FUNC0("default")), 65535);
    FUNC7(&globalconf, FUNC6(FUNC0("host1")), 80);
    FUNC7(&globalconf, FUNC6(FUNC0("host1")), 443);
    FUNC7(&globalconf, FUNC6(FUNC0("host2")), 80);
    FUNC7(&globalconf, FUNC6(FUNC0("host2")), 443);
    FUNC7(&globalconf, FUNC6(FUNC0("host3")), 65535);

    FUNC5(&ctx, test_loop, &globalconf);

    /* run the tests */
    FUNC1(&H2O_URL_SCHEME_HTTP, "host1", "host1:80");
    FUNC1(&H2O_URL_SCHEME_HTTPS, "host1", "host1:443");
    FUNC1(&H2O_URL_SCHEME_HTTP, "host2", "host2:80");
    FUNC1(&H2O_URL_SCHEME_HTTPS, "host2", "host2:443");

    /* supplied port number in the Host header must be preferred */
    FUNC1(&H2O_URL_SCHEME_HTTP, "host1:80", "host1:80");
    FUNC1(&H2O_URL_SCHEME_HTTP, "host1:443", "host1:443");
    FUNC1(&H2O_URL_SCHEME_HTTPS, "host1:80", "host1:80");
    FUNC1(&H2O_URL_SCHEME_HTTPS, "host1:443", "host1:443");
    FUNC1(&H2O_URL_SCHEME_HTTP, "host2:80", "host2:80");
    FUNC1(&H2O_URL_SCHEME_HTTP, "host2:443", "host2:443");
    FUNC1(&H2O_URL_SCHEME_HTTPS, "host2:80", "host2:80");
    FUNC1(&H2O_URL_SCHEME_HTTPS, "host2:443", "host2:443");

    /* host-level conf without default port */
    FUNC1(&H2O_URL_SCHEME_HTTP, "host3", "host3:65535");
    FUNC1(&H2O_URL_SCHEME_HTTPS, "host3", "host3:65535");
    FUNC1(&H2O_URL_SCHEME_HTTP, "host3", "host3:65535");
    FUNC1(&H2O_URL_SCHEME_HTTPS, "host3", "host3:65535");
    FUNC1(&H2O_URL_SCHEME_HTTP, "host3:80", "host3:65535");
    FUNC1(&H2O_URL_SCHEME_HTTPS, "host3:80", "default:65535");
    FUNC1(&H2O_URL_SCHEME_HTTP, "host3:443", "default:65535");
    FUNC1(&H2O_URL_SCHEME_HTTPS, "host3:443", "host3:65535");

    /* upper-case */
    FUNC1(&H2O_URL_SCHEME_HTTP, "HoST1", "host1:80");
    FUNC1(&H2O_URL_SCHEME_HTTP, "HoST1:80", "host1:80");
    FUNC1(&H2O_URL_SCHEME_HTTPS, "HoST1", "host1:443");
    FUNC1(&H2O_URL_SCHEME_HTTPS, "HoST1:443", "host1:443");

    FUNC4(&ctx);
    FUNC2(&globalconf);
}