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
typedef  int /*<<< orphan*/  parsed ;
struct TYPE_9__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * base; } ;
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * base; } ;
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * base; } ;
struct TYPE_10__ {int _port; TYPE_3__ path; TYPE_2__ host; TYPE_1__ authority; int /*<<< orphan*/ * scheme; } ;
typedef  TYPE_4__ h2o_url_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  H2O_URL_SCHEME_HTTP ; 
 int /*<<< orphan*/  H2O_URL_SCHEME_HTTPS ; 
 int /*<<< orphan*/  SIZE_MAX ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(void)
{
    h2o_url_t parsed;
    int ret;

    FUNC3(&parsed, 0x55, sizeof(parsed));
    ret = FUNC2("abc", SIZE_MAX, &parsed);
    FUNC4(ret == 0);
    FUNC4(parsed.scheme == NULL);
    FUNC4(parsed.authority.base == NULL);
    FUNC4(parsed.host.base == NULL);
    FUNC4(parsed._port == 65535);
    FUNC4(FUNC1(parsed.path.base, parsed.path.len, FUNC0("abc")));

    FUNC3(&parsed, 0x55, sizeof(parsed));
    ret = FUNC2("/abc", SIZE_MAX, &parsed);
    FUNC4(ret == 0);
    FUNC4(parsed.scheme == NULL);
    FUNC4(parsed.authority.base == NULL);
    FUNC4(parsed.host.base == NULL);
    FUNC4(parsed._port == 65535);
    FUNC4(FUNC1(parsed.path.base, parsed.path.len, FUNC0("/abc")));

    FUNC3(&parsed, 0x55, sizeof(parsed));
    ret = FUNC2("http:abc", SIZE_MAX, &parsed);
    FUNC4(ret == 0);
    FUNC4(parsed.scheme == &H2O_URL_SCHEME_HTTP);
    FUNC4(parsed.authority.base == NULL);
    FUNC4(parsed.host.base == NULL);
    FUNC4(parsed._port == 65535);
    FUNC4(FUNC1(parsed.path.base, parsed.path.len, FUNC0("abc")));

    FUNC3(&parsed, 0x55, sizeof(parsed));
    ret = FUNC2("//host", SIZE_MAX, &parsed);
    FUNC4(ret == 0);
    FUNC4(parsed.scheme == NULL);
    FUNC4(FUNC1(parsed.authority.base, parsed.authority.len, FUNC0("host")));
    FUNC4(FUNC1(parsed.host.base, parsed.host.len, FUNC0("host")));
    FUNC4(parsed._port == 65535);
    FUNC4(FUNC1(parsed.path.base, parsed.path.len, FUNC0("/")));

    FUNC3(&parsed, 0x55, sizeof(parsed));
    ret = FUNC2("//host:12345/path", SIZE_MAX, &parsed);
    FUNC4(ret == 0);
    FUNC4(parsed.scheme == NULL);
    FUNC4(FUNC1(parsed.authority.base, parsed.authority.len, FUNC0("host:12345")));
    FUNC4(FUNC1(parsed.host.base, parsed.host.len, FUNC0("host")));
    FUNC4(parsed._port == 12345);
    FUNC4(FUNC1(parsed.path.base, parsed.path.len, FUNC0("/path")));

    FUNC3(&parsed, 0x55, sizeof(parsed));
    ret = FUNC2("https://host:12345/path", SIZE_MAX, &parsed);
    FUNC4(ret == 0);
    FUNC4(parsed.scheme == &H2O_URL_SCHEME_HTTPS);
    FUNC4(FUNC1(parsed.authority.base, parsed.authority.len, FUNC0("host:12345")));
    FUNC4(FUNC1(parsed.host.base, parsed.host.len, FUNC0("host")));
    FUNC4(parsed._port == 12345);
    FUNC4(FUNC1(parsed.path.base, parsed.path.len, FUNC0("/path")));
}