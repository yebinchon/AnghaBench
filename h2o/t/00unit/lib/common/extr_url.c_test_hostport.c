
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {char const* base; int len; } ;
typedef TYPE_1__ h2o_iovec_t ;


 int H2O_STRLIT (char*) ;
 TYPE_1__ h2o_iovec_init (int ) ;
 int h2o_memis (char const*,int,int ) ;
 char* h2o_url_parse_hostport (char const*,int,TYPE_1__*,int*) ;
 int ok (int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void test_hostport(void)
{
    h2o_iovec_t input, host;
    uint16_t port;
    const char *ret;

    input = h2o_iovec_init(H2O_STRLIT("127.0.0.1"));
    ret = h2o_url_parse_hostport(input.base, input.len, &host, &port);
    ok(ret == input.base + input.len);
    ok(h2o_memis(host.base, host.len, H2O_STRLIT("127.0.0.1")));
    ok(port == 65535);

    input = h2o_iovec_init(H2O_STRLIT("127.0.0.1/"));
    ret = h2o_url_parse_hostport(input.base, input.len, &host, &port);
    ok(strcmp(ret, "/") == 0);
    ok(h2o_memis(host.base, host.len, H2O_STRLIT("127.0.0.1")));
    ok(port == 65535);

    input = h2o_iovec_init(H2O_STRLIT("127.0.0.1:8081/"));
    ret = h2o_url_parse_hostport(input.base, input.len, &host, &port);
    ok(strcmp(ret, "/") == 0);
    ok(h2o_memis(host.base, host.len, H2O_STRLIT("127.0.0.1")));
    ok(port == 8081);

    input = h2o_iovec_init(H2O_STRLIT("[::ffff:192.0.2.1]:8081/"));
    ret = h2o_url_parse_hostport(input.base, input.len, &host, &port);
    ok(strcmp(ret, "/") == 0);
    ok(h2o_memis(host.base, host.len, H2O_STRLIT("::ffff:192.0.2.1")));
    ok(port == 8081);

    input = h2o_iovec_init(H2O_STRLIT("[::ffff:192.0.2.1:8081/"));
    ret = h2o_url_parse_hostport(input.base, input.len, &host, &port);
    ok(ret == ((void*)0));

    input = h2o_iovec_init(H2O_STRLIT(":8081/"));
    ret = h2o_url_parse_hostport(input.base, input.len, &host, &port);
    ok(ret == ((void*)0));

    input = h2o_iovec_init(H2O_STRLIT("[]:8081/"));
    ret = h2o_url_parse_hostport(input.base, input.len, &host, &port);
    ok(ret == ((void*)0));
}
