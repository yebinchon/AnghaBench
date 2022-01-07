
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_globalconf_t ;


 int H2O_STRLIT (char*) ;
 int H2O_URL_SCHEME_HTTP ;
 int H2O_URL_SCHEME_HTTPS ;
 int check (int *,char*,char*) ;
 int ctx ;
 int h2o_config_dispose (int *) ;
 int h2o_config_init (int *) ;
 int h2o_context_dispose (int *) ;
 int h2o_context_init (int *,int ,int *) ;
 int h2o_iovec_init (int ) ;
 int register_authority (int *,int ,int) ;
 int test_loop ;

void test_issues293()
{
    h2o_globalconf_t globalconf;

    h2o_config_init(&globalconf);


    register_authority(&globalconf, h2o_iovec_init(H2O_STRLIT("default")), 65535);
    register_authority(&globalconf, h2o_iovec_init(H2O_STRLIT("host1")), 80);
    register_authority(&globalconf, h2o_iovec_init(H2O_STRLIT("host1")), 443);
    register_authority(&globalconf, h2o_iovec_init(H2O_STRLIT("host2")), 80);
    register_authority(&globalconf, h2o_iovec_init(H2O_STRLIT("host2")), 443);
    register_authority(&globalconf, h2o_iovec_init(H2O_STRLIT("host3")), 65535);

    h2o_context_init(&ctx, test_loop, &globalconf);


    check(&H2O_URL_SCHEME_HTTP, "host1", "host1:80");
    check(&H2O_URL_SCHEME_HTTPS, "host1", "host1:443");
    check(&H2O_URL_SCHEME_HTTP, "host2", "host2:80");
    check(&H2O_URL_SCHEME_HTTPS, "host2", "host2:443");


    check(&H2O_URL_SCHEME_HTTP, "host1:80", "host1:80");
    check(&H2O_URL_SCHEME_HTTP, "host1:443", "host1:443");
    check(&H2O_URL_SCHEME_HTTPS, "host1:80", "host1:80");
    check(&H2O_URL_SCHEME_HTTPS, "host1:443", "host1:443");
    check(&H2O_URL_SCHEME_HTTP, "host2:80", "host2:80");
    check(&H2O_URL_SCHEME_HTTP, "host2:443", "host2:443");
    check(&H2O_URL_SCHEME_HTTPS, "host2:80", "host2:80");
    check(&H2O_URL_SCHEME_HTTPS, "host2:443", "host2:443");


    check(&H2O_URL_SCHEME_HTTP, "host3", "host3:65535");
    check(&H2O_URL_SCHEME_HTTPS, "host3", "host3:65535");
    check(&H2O_URL_SCHEME_HTTP, "host3", "host3:65535");
    check(&H2O_URL_SCHEME_HTTPS, "host3", "host3:65535");
    check(&H2O_URL_SCHEME_HTTP, "host3:80", "host3:65535");
    check(&H2O_URL_SCHEME_HTTPS, "host3:80", "default:65535");
    check(&H2O_URL_SCHEME_HTTP, "host3:443", "default:65535");
    check(&H2O_URL_SCHEME_HTTPS, "host3:443", "host3:65535");


    check(&H2O_URL_SCHEME_HTTP, "HoST1", "host1:80");
    check(&H2O_URL_SCHEME_HTTP, "HoST1:80", "host1:80");
    check(&H2O_URL_SCHEME_HTTPS, "HoST1", "host1:443");
    check(&H2O_URL_SCHEME_HTTPS, "HoST1:443", "host1:443");

    h2o_context_dispose(&ctx);
    h2o_config_dispose(&globalconf);
}
