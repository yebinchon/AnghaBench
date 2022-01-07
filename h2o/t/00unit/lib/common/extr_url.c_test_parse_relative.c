
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int parsed ;
struct TYPE_9__ {int len; int * base; } ;
struct TYPE_8__ {int len; int * base; } ;
struct TYPE_7__ {int len; int * base; } ;
struct TYPE_10__ {int _port; TYPE_3__ path; TYPE_2__ host; TYPE_1__ authority; int * scheme; } ;
typedef TYPE_4__ h2o_url_t ;


 int H2O_STRLIT (char*) ;
 int H2O_URL_SCHEME_HTTP ;
 int H2O_URL_SCHEME_HTTPS ;
 int SIZE_MAX ;
 int h2o_memis (int *,int ,int ) ;
 int h2o_url_parse_relative (char*,int ,TYPE_4__*) ;
 int memset (TYPE_4__*,int,int) ;
 int ok (int) ;

__attribute__((used)) static void test_parse_relative(void)
{
    h2o_url_t parsed;
    int ret;

    memset(&parsed, 0x55, sizeof(parsed));
    ret = h2o_url_parse_relative("abc", SIZE_MAX, &parsed);
    ok(ret == 0);
    ok(parsed.scheme == ((void*)0));
    ok(parsed.authority.base == ((void*)0));
    ok(parsed.host.base == ((void*)0));
    ok(parsed._port == 65535);
    ok(h2o_memis(parsed.path.base, parsed.path.len, H2O_STRLIT("abc")));

    memset(&parsed, 0x55, sizeof(parsed));
    ret = h2o_url_parse_relative("/abc", SIZE_MAX, &parsed);
    ok(ret == 0);
    ok(parsed.scheme == ((void*)0));
    ok(parsed.authority.base == ((void*)0));
    ok(parsed.host.base == ((void*)0));
    ok(parsed._port == 65535);
    ok(h2o_memis(parsed.path.base, parsed.path.len, H2O_STRLIT("/abc")));

    memset(&parsed, 0x55, sizeof(parsed));
    ret = h2o_url_parse_relative("http:abc", SIZE_MAX, &parsed);
    ok(ret == 0);
    ok(parsed.scheme == &H2O_URL_SCHEME_HTTP);
    ok(parsed.authority.base == ((void*)0));
    ok(parsed.host.base == ((void*)0));
    ok(parsed._port == 65535);
    ok(h2o_memis(parsed.path.base, parsed.path.len, H2O_STRLIT("abc")));

    memset(&parsed, 0x55, sizeof(parsed));
    ret = h2o_url_parse_relative("//host", SIZE_MAX, &parsed);
    ok(ret == 0);
    ok(parsed.scheme == ((void*)0));
    ok(h2o_memis(parsed.authority.base, parsed.authority.len, H2O_STRLIT("host")));
    ok(h2o_memis(parsed.host.base, parsed.host.len, H2O_STRLIT("host")));
    ok(parsed._port == 65535);
    ok(h2o_memis(parsed.path.base, parsed.path.len, H2O_STRLIT("/")));

    memset(&parsed, 0x55, sizeof(parsed));
    ret = h2o_url_parse_relative("//host:12345/path", SIZE_MAX, &parsed);
    ok(ret == 0);
    ok(parsed.scheme == ((void*)0));
    ok(h2o_memis(parsed.authority.base, parsed.authority.len, H2O_STRLIT("host:12345")));
    ok(h2o_memis(parsed.host.base, parsed.host.len, H2O_STRLIT("host")));
    ok(parsed._port == 12345);
    ok(h2o_memis(parsed.path.base, parsed.path.len, H2O_STRLIT("/path")));

    memset(&parsed, 0x55, sizeof(parsed));
    ret = h2o_url_parse_relative("https://host:12345/path", SIZE_MAX, &parsed);
    ok(ret == 0);
    ok(parsed.scheme == &H2O_URL_SCHEME_HTTPS);
    ok(h2o_memis(parsed.authority.base, parsed.authority.len, H2O_STRLIT("host:12345")));
    ok(h2o_memis(parsed.host.base, parsed.host.len, H2O_STRLIT("host")));
    ok(parsed._port == 12345);
    ok(h2o_memis(parsed.path.base, parsed.path.len, H2O_STRLIT("/path")));
}
