
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int h2o_url_t ;
typedef int h2o_mem_pool_t ;
struct TYPE_3__ {scalar_t__ len; int * base; } ;
typedef TYPE_1__ h2o_iovec_t ;


 int H2O_STRLIT (char*) ;
 int H2O_URL_SCHEME_HTTPS ;
 int h2o_iovec_init (int ) ;
 int h2o_mem_clear_pool (int *) ;
 int h2o_mem_init_pool (int *) ;
 int h2o_memis (int *,scalar_t__,int ) ;
 int h2o_url_parse (int ,int *) ;
 int ok (int) ;
 TYPE_1__ rewrite_location (int *,int ,int *,int *,int ,int ) ;

__attribute__((used)) static void test_rewrite_location(void)
{
    h2o_url_t upstream;
    h2o_mem_pool_t pool;
    h2o_iovec_t ret;

    h2o_url_parse(H2O_STRLIT("http://realhost:81/real/"), &upstream);

    h2o_mem_init_pool(&pool);

    ret = rewrite_location(&pool, H2O_STRLIT("http://realhost:81/real/abc"), &upstream, &H2O_URL_SCHEME_HTTPS,
                           h2o_iovec_init(H2O_STRLIT("vhost:8443")), h2o_iovec_init(H2O_STRLIT("/virtual/")));
    ok(h2o_memis(ret.base, ret.len, H2O_STRLIT("https://vhost:8443/virtual/abc")));
    ret = rewrite_location(&pool, H2O_STRLIT("http://realhost:81/other/abc"), &upstream, &H2O_URL_SCHEME_HTTPS,
                           h2o_iovec_init(H2O_STRLIT("vhost:8443")), h2o_iovec_init(H2O_STRLIT("/virtual/")));
    ok(ret.base == ((void*)0));
    ok(ret.len == 0);

    h2o_mem_clear_pool(&pool);
}
