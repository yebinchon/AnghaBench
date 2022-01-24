#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_16__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_15__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_18__ {int _port; TYPE_3__ path; TYPE_2__ host; TYPE_1__ authority; int /*<<< orphan*/ * scheme; } ;
typedef  TYPE_4__ h2o_url_t ;
typedef  int /*<<< orphan*/  h2o_mem_pool_t ;
struct TYPE_19__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
typedef  TYPE_5__ h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  H2O_URL_SCHEME_HTTP ; 
 int /*<<< orphan*/  H2O_URL_SCHEME_HTTPS ; 
 int /*<<< orphan*/  SIZE_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_4__*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_5__ FUNC7 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__*,TYPE_4__*) ; 
 TYPE_5__ FUNC8 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(void)
{
    h2o_mem_pool_t pool;
    h2o_url_t base, relative, resolved;
    h2o_iovec_t final;
    int ret;

    FUNC2(&pool);

    ret = FUNC5("http://example.com/dir/index.html", SIZE_MAX, &base);
    FUNC9(ret == 0);

    ret = FUNC6("../assets/jquery.js", SIZE_MAX, &relative);
    FUNC9(ret == 0);
    final = FUNC7(&pool, &base, &relative, &resolved);
    FUNC9(FUNC3(final.base, final.len, FUNC0("http://example.com/assets/jquery.js")));
    FUNC9(resolved.scheme == &H2O_URL_SCHEME_HTTP);
    FUNC9(FUNC3(resolved.authority.base, resolved.authority.len, FUNC0("example.com")));
    FUNC9(FUNC3(resolved.host.base, resolved.host.len, FUNC0("example.com")));
    FUNC9(resolved._port == 65535);
    FUNC9(FUNC4(&resolved) == 80);
    FUNC9(FUNC3(resolved.path.base, resolved.path.len, FUNC0("/assets/jquery.js")));

    ret = FUNC6("foo.html", SIZE_MAX, &relative);
    FUNC9(ret == 0);
    final = FUNC7(&pool, &base, &relative, &resolved);
    FUNC9(FUNC3(final.base, final.len, FUNC0("http://example.com/dir/foo.html")));
    FUNC9(resolved.scheme == &H2O_URL_SCHEME_HTTP);
    FUNC9(FUNC3(resolved.authority.base, resolved.authority.len, FUNC0("example.com")));
    FUNC9(FUNC3(resolved.host.base, resolved.host.len, FUNC0("example.com")));
    FUNC9(resolved._port == 65535);
    FUNC9(FUNC4(&resolved) == 80);
    FUNC9(FUNC3(resolved.path.base, resolved.path.len, FUNC0("/dir/foo.html")));

    ret = FUNC6("./bar.txt", SIZE_MAX, &relative);
    FUNC9(ret == 0);
    final = FUNC7(&pool, &base, &relative, &resolved);
    FUNC9(FUNC3(final.base, final.len, FUNC0("http://example.com/dir/bar.txt")));
    FUNC9(resolved.scheme == &H2O_URL_SCHEME_HTTP);
    FUNC9(FUNC3(resolved.authority.base, resolved.authority.len, FUNC0("example.com")));
    FUNC9(FUNC3(resolved.host.base, resolved.host.len, FUNC0("example.com")));
    FUNC9(resolved._port == 65535);
    FUNC9(FUNC4(&resolved) == 80);
    FUNC9(FUNC3(resolved.path.base, resolved.path.len, FUNC0("/dir/bar.txt")));

    ret = FUNC6("../../../traverse", SIZE_MAX, &relative);
    FUNC9(ret == 0);
    final = FUNC7(&pool, &base, &relative, &resolved);
    FUNC9(FUNC3(final.base, final.len, FUNC0("http://example.com/traverse")));
    FUNC9(resolved.scheme == &H2O_URL_SCHEME_HTTP);
    FUNC9(FUNC3(resolved.authority.base, resolved.authority.len, FUNC0("example.com")));
    FUNC9(FUNC3(resolved.host.base, resolved.host.len, FUNC0("example.com")));
    FUNC9(resolved._port == 65535);
    FUNC9(FUNC4(&resolved) == 80);
    FUNC9(FUNC3(resolved.path.base, resolved.path.len, FUNC0("/traverse")));

    ret = FUNC6("http:foo.html", SIZE_MAX, &relative);
    FUNC9(ret == 0);
    final = FUNC7(&pool, &base, &relative, &resolved);
    FUNC9(FUNC3(final.base, final.len, FUNC0("http://example.com/dir/foo.html")));
    FUNC9(resolved.scheme == &H2O_URL_SCHEME_HTTP);
    FUNC9(FUNC3(resolved.authority.base, resolved.authority.len, FUNC0("example.com")));
    FUNC9(FUNC3(resolved.host.base, resolved.host.len, FUNC0("example.com")));
    FUNC9(resolved._port == 65535);
    FUNC9(FUNC4(&resolved) == 80);
    FUNC9(FUNC3(resolved.path.base, resolved.path.len, FUNC0("/dir/foo.html")));

    ret = FUNC6("http:/icon.ico", SIZE_MAX, &relative);
    FUNC9(ret == 0);
    final = FUNC7(&pool, &base, &relative, &resolved);
    FUNC9(FUNC3(final.base, final.len, FUNC0("http://example.com/icon.ico")));
    FUNC9(resolved.scheme == &H2O_URL_SCHEME_HTTP);
    FUNC9(FUNC3(resolved.authority.base, resolved.authority.len, FUNC0("example.com")));
    FUNC9(FUNC3(resolved.host.base, resolved.host.len, FUNC0("example.com")));
    FUNC9(resolved._port == 65535);
    FUNC9(FUNC4(&resolved) == 80);
    FUNC9(FUNC3(resolved.path.base, resolved.path.len, FUNC0("/icon.ico")));

    ret = FUNC6("https:/icon.ico", SIZE_MAX, &relative);
    FUNC9(ret == 0);
    final = FUNC7(&pool, &base, &relative, &resolved);
    FUNC9(FUNC3(final.base, final.len, FUNC0("https://example.com/icon.ico")));
    FUNC9(resolved.scheme == &H2O_URL_SCHEME_HTTPS);
    FUNC9(FUNC3(resolved.authority.base, resolved.authority.len, FUNC0("example.com")));
    FUNC9(FUNC3(resolved.host.base, resolved.host.len, FUNC0("example.com")));
    FUNC9(resolved._port == 65535);
    FUNC9(FUNC4(&resolved) == 443);
    FUNC9(FUNC3(resolved.path.base, resolved.path.len, FUNC0("/icon.ico")));

    ret = FUNC6("//example.jp:81/icon.ico", SIZE_MAX, &relative);
    FUNC9(ret == 0);
    final = FUNC7(&pool, &base, &relative, &resolved);
    FUNC9(FUNC3(final.base, final.len, FUNC0("http://example.jp:81/icon.ico")));
    FUNC9(resolved.scheme == &H2O_URL_SCHEME_HTTP);
    FUNC9(FUNC3(resolved.authority.base, resolved.authority.len, FUNC0("example.jp:81")));
    FUNC9(FUNC3(resolved.host.base, resolved.host.len, FUNC0("example.jp")));
    FUNC9(resolved._port == 81);
    FUNC9(FUNC4(&resolved) == 81);
    FUNC9(FUNC3(resolved.path.base, resolved.path.len, FUNC0("/icon.ico")));

    final = FUNC8(&pool, &base);
    FUNC9(FUNC3(final.base, final.len, FUNC0("http://example.com/dir/index.html")));

    FUNC1(&pool);
}