#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_9__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_10__ {int _port; TYPE_1__ path; TYPE_3__ host; TYPE_2__ authority; int /*<<< orphan*/ * scheme; } ;
typedef  TYPE_4__ h2o_url_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  H2O_URL_SCHEME_HTTP ; 
 int /*<<< orphan*/  H2O_URL_SCHEME_HTTPS ; 
 int /*<<< orphan*/  SIZE_MAX ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(void)
{
    h2o_url_t parsed;
    int ret;

    ret = FUNC3("http://example.com/abc", SIZE_MAX, &parsed);
    FUNC4(ret == 0);
    FUNC4(parsed.scheme == &H2O_URL_SCHEME_HTTP);
    FUNC4(FUNC1(parsed.authority.base, parsed.authority.len, FUNC0("example.com")));
    FUNC4(FUNC1(parsed.host.base, parsed.host.len, FUNC0("example.com")));
    FUNC4(parsed._port == 65535);
    FUNC4(FUNC2(&parsed) == 80);
    FUNC4(FUNC1(parsed.path.base, parsed.path.len, FUNC0("/abc")));

    ret = FUNC3("http://example.com", SIZE_MAX, &parsed);
    FUNC4(ret == 0);
    FUNC4(parsed.scheme == &H2O_URL_SCHEME_HTTP);
    FUNC4(FUNC1(parsed.authority.base, parsed.authority.len, FUNC0("example.com")));
    FUNC4(FUNC1(parsed.host.base, parsed.host.len, FUNC0("example.com")));
    FUNC4(parsed._port == 65535);
    FUNC4(FUNC2(&parsed) == 80);
    FUNC4(FUNC1(parsed.path.base, parsed.path.len, FUNC0("/")));

    ret = FUNC3("http://example.com:81/abc", SIZE_MAX, &parsed);
    FUNC4(ret == 0);
    FUNC4(parsed.scheme == &H2O_URL_SCHEME_HTTP);
    FUNC4(FUNC1(parsed.authority.base, parsed.authority.len, FUNC0("example.com:81")));
    FUNC4(FUNC1(parsed.host.base, parsed.host.len, FUNC0("example.com")));
    FUNC4(parsed._port == 81);
    FUNC4(FUNC2(&parsed) == 81);
    FUNC4(FUNC1(parsed.path.base, parsed.path.len, FUNC0("/abc")));

    ret = FUNC3("http://example.com:81", SIZE_MAX, &parsed);
    FUNC4(ret == 0);
    FUNC4(parsed.scheme == &H2O_URL_SCHEME_HTTP);
    FUNC4(FUNC1(parsed.authority.base, parsed.authority.len, FUNC0("example.com:81")));
    FUNC4(FUNC1(parsed.host.base, parsed.host.len, FUNC0("example.com")));
    FUNC4(parsed._port == 81);
    FUNC4(FUNC2(&parsed) == 81);
    FUNC4(FUNC1(parsed.path.base, parsed.path.len, FUNC0("/")));

    ret = FUNC3("https://example.com/abc", SIZE_MAX, &parsed);
    FUNC4(ret == 0);
    FUNC4(parsed.scheme == &H2O_URL_SCHEME_HTTPS);
    FUNC4(FUNC1(parsed.authority.base, parsed.authority.len, FUNC0("example.com")));
    FUNC4(FUNC1(parsed.host.base, parsed.host.len, FUNC0("example.com")));
    FUNC4(parsed._port == 65535);
    FUNC4(FUNC2(&parsed) == 443);
    FUNC4(FUNC1(parsed.path.base, parsed.path.len, FUNC0("/abc")));

    ret = FUNC3("http:/abc", SIZE_MAX, &parsed);
    FUNC4(ret != 0);

    ret = FUNC3("ftp://example.com/abc", SIZE_MAX, &parsed);
    FUNC4(ret != 0);

    ret = FUNC3("http://abc:111111/def", SIZE_MAX, &parsed);
    FUNC4(ret != 0);

    ret = FUNC3("http://[::ffff:192.0.2.128]", SIZE_MAX, &parsed);
    FUNC4(ret == 0);
    FUNC4(parsed.scheme == &H2O_URL_SCHEME_HTTP);
    FUNC4(FUNC1(parsed.authority.base, parsed.authority.len, FUNC0("[::ffff:192.0.2.128]")));
    FUNC4(FUNC1(parsed.host.base, parsed.host.len, FUNC0("::ffff:192.0.2.128")));
    FUNC4(parsed._port == 65535);
    FUNC4(FUNC2(&parsed) == 80);
    FUNC4(FUNC1(parsed.path.base, parsed.path.len, FUNC0("/")));

    ret = FUNC3("https://[::ffff:192.0.2.128]/abc", SIZE_MAX, &parsed);
    FUNC4(ret == 0);
    FUNC4(parsed.scheme == &H2O_URL_SCHEME_HTTPS);
    FUNC4(FUNC1(parsed.authority.base, parsed.authority.len, FUNC0("[::ffff:192.0.2.128]")));
    FUNC4(FUNC1(parsed.host.base, parsed.host.len, FUNC0("::ffff:192.0.2.128")));
    FUNC4(parsed._port == 65535);
    FUNC4(FUNC2(&parsed) == 443);
    FUNC4(FUNC1(parsed.path.base, parsed.path.len, FUNC0("/abc")));

    ret = FUNC3("https://[::ffff:192.0.2.128]:111/abc", SIZE_MAX, &parsed);
    FUNC4(ret == 0);
    FUNC4(parsed.scheme == &H2O_URL_SCHEME_HTTPS);
    FUNC4(FUNC1(parsed.authority.base, parsed.authority.len, FUNC0("[::ffff:192.0.2.128]:111")));
    FUNC4(FUNC1(parsed.host.base, parsed.host.len, FUNC0("::ffff:192.0.2.128")));
    FUNC4(parsed._port == 111);
    FUNC4(FUNC2(&parsed) == 111);
    FUNC4(FUNC1(parsed.path.base, parsed.path.len, FUNC0("/abc")));
}