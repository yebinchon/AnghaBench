
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int len; int base; } ;
struct TYPE_9__ {int len; int base; } ;
struct TYPE_8__ {int len; int base; } ;
struct TYPE_10__ {int _port; TYPE_1__ path; TYPE_3__ host; TYPE_2__ authority; int * scheme; } ;
typedef TYPE_4__ h2o_url_t ;


 int H2O_STRLIT (char*) ;
 int H2O_URL_SCHEME_HTTP ;
 int H2O_URL_SCHEME_HTTPS ;
 int SIZE_MAX ;
 int h2o_memis (int ,int ,int ) ;
 int h2o_url_get_port (TYPE_4__*) ;
 int h2o_url_parse (char*,int ,TYPE_4__*) ;
 int ok (int) ;

__attribute__((used)) static void test_parse(void)
{
    h2o_url_t parsed;
    int ret;

    ret = h2o_url_parse("http://example.com/abc", SIZE_MAX, &parsed);
    ok(ret == 0);
    ok(parsed.scheme == &H2O_URL_SCHEME_HTTP);
    ok(h2o_memis(parsed.authority.base, parsed.authority.len, H2O_STRLIT("example.com")));
    ok(h2o_memis(parsed.host.base, parsed.host.len, H2O_STRLIT("example.com")));
    ok(parsed._port == 65535);
    ok(h2o_url_get_port(&parsed) == 80);
    ok(h2o_memis(parsed.path.base, parsed.path.len, H2O_STRLIT("/abc")));

    ret = h2o_url_parse("http://example.com", SIZE_MAX, &parsed);
    ok(ret == 0);
    ok(parsed.scheme == &H2O_URL_SCHEME_HTTP);
    ok(h2o_memis(parsed.authority.base, parsed.authority.len, H2O_STRLIT("example.com")));
    ok(h2o_memis(parsed.host.base, parsed.host.len, H2O_STRLIT("example.com")));
    ok(parsed._port == 65535);
    ok(h2o_url_get_port(&parsed) == 80);
    ok(h2o_memis(parsed.path.base, parsed.path.len, H2O_STRLIT("/")));

    ret = h2o_url_parse("http://example.com:81/abc", SIZE_MAX, &parsed);
    ok(ret == 0);
    ok(parsed.scheme == &H2O_URL_SCHEME_HTTP);
    ok(h2o_memis(parsed.authority.base, parsed.authority.len, H2O_STRLIT("example.com:81")));
    ok(h2o_memis(parsed.host.base, parsed.host.len, H2O_STRLIT("example.com")));
    ok(parsed._port == 81);
    ok(h2o_url_get_port(&parsed) == 81);
    ok(h2o_memis(parsed.path.base, parsed.path.len, H2O_STRLIT("/abc")));

    ret = h2o_url_parse("http://example.com:81", SIZE_MAX, &parsed);
    ok(ret == 0);
    ok(parsed.scheme == &H2O_URL_SCHEME_HTTP);
    ok(h2o_memis(parsed.authority.base, parsed.authority.len, H2O_STRLIT("example.com:81")));
    ok(h2o_memis(parsed.host.base, parsed.host.len, H2O_STRLIT("example.com")));
    ok(parsed._port == 81);
    ok(h2o_url_get_port(&parsed) == 81);
    ok(h2o_memis(parsed.path.base, parsed.path.len, H2O_STRLIT("/")));

    ret = h2o_url_parse("https://example.com/abc", SIZE_MAX, &parsed);
    ok(ret == 0);
    ok(parsed.scheme == &H2O_URL_SCHEME_HTTPS);
    ok(h2o_memis(parsed.authority.base, parsed.authority.len, H2O_STRLIT("example.com")));
    ok(h2o_memis(parsed.host.base, parsed.host.len, H2O_STRLIT("example.com")));
    ok(parsed._port == 65535);
    ok(h2o_url_get_port(&parsed) == 443);
    ok(h2o_memis(parsed.path.base, parsed.path.len, H2O_STRLIT("/abc")));

    ret = h2o_url_parse("http:/abc", SIZE_MAX, &parsed);
    ok(ret != 0);

    ret = h2o_url_parse("ftp://example.com/abc", SIZE_MAX, &parsed);
    ok(ret != 0);

    ret = h2o_url_parse("http://abc:111111/def", SIZE_MAX, &parsed);
    ok(ret != 0);

    ret = h2o_url_parse("http://[::ffff:192.0.2.128]", SIZE_MAX, &parsed);
    ok(ret == 0);
    ok(parsed.scheme == &H2O_URL_SCHEME_HTTP);
    ok(h2o_memis(parsed.authority.base, parsed.authority.len, H2O_STRLIT("[::ffff:192.0.2.128]")));
    ok(h2o_memis(parsed.host.base, parsed.host.len, H2O_STRLIT("::ffff:192.0.2.128")));
    ok(parsed._port == 65535);
    ok(h2o_url_get_port(&parsed) == 80);
    ok(h2o_memis(parsed.path.base, parsed.path.len, H2O_STRLIT("/")));

    ret = h2o_url_parse("https://[::ffff:192.0.2.128]/abc", SIZE_MAX, &parsed);
    ok(ret == 0);
    ok(parsed.scheme == &H2O_URL_SCHEME_HTTPS);
    ok(h2o_memis(parsed.authority.base, parsed.authority.len, H2O_STRLIT("[::ffff:192.0.2.128]")));
    ok(h2o_memis(parsed.host.base, parsed.host.len, H2O_STRLIT("::ffff:192.0.2.128")));
    ok(parsed._port == 65535);
    ok(h2o_url_get_port(&parsed) == 443);
    ok(h2o_memis(parsed.path.base, parsed.path.len, H2O_STRLIT("/abc")));

    ret = h2o_url_parse("https://[::ffff:192.0.2.128]:111/abc", SIZE_MAX, &parsed);
    ok(ret == 0);
    ok(parsed.scheme == &H2O_URL_SCHEME_HTTPS);
    ok(h2o_memis(parsed.authority.base, parsed.authority.len, H2O_STRLIT("[::ffff:192.0.2.128]:111")));
    ok(h2o_memis(parsed.host.base, parsed.host.len, H2O_STRLIT("::ffff:192.0.2.128")));
    ok(parsed._port == 111);
    ok(h2o_url_get_port(&parsed) == 111);
    ok(h2o_memis(parsed.path.base, parsed.path.len, H2O_STRLIT("/abc")));
}
