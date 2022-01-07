
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; int * base; } ;
typedef TYPE_1__ h2o_iovec_t ;
typedef int h2o_http2_casper_t ;


 int H2O_STRLIT (char*) ;
 int get_end_of_cookie_value (int *,scalar_t__) ;
 int h2o_http2_casper_consume_cookie (int *,int *,int ) ;
 int * h2o_http2_casper_create (int,int) ;
 int h2o_http2_casper_destroy (int *) ;
 TYPE_1__ h2o_http2_casper_get_cookie (int *) ;
 int h2o_http2_casper_lookup (int *,int ,int) ;
 TYPE_1__ h2o_strdup (int *,int *,scalar_t__) ;
 int ok (int) ;

__attribute__((used)) static void test_cookie(void)
{
    h2o_http2_casper_t *casper;

    casper = h2o_http2_casper_create(13, 6);

    h2o_iovec_t cookie = h2o_http2_casper_get_cookie(casper);
    ok(cookie.base == ((void*)0));
    ok(cookie.len == 0);

    h2o_http2_casper_lookup(casper, H2O_STRLIT("/index.html"), 1);
    cookie = h2o_http2_casper_get_cookie(casper);
    ok(cookie.len != 0);
    cookie = h2o_strdup(((void*)0), cookie.base, cookie.len);
    h2o_http2_casper_destroy(casper);
    casper = h2o_http2_casper_create(13, 6);

    h2o_http2_casper_consume_cookie(casper, cookie.base, get_end_of_cookie_value(cookie.base, cookie.len));
    ok(h2o_http2_casper_lookup(casper, H2O_STRLIT("/index.html"), 0) == 1);
    ok(h2o_http2_casper_lookup(casper, H2O_STRLIT("/index.php"), 0) == 0);
    h2o_http2_casper_lookup(casper, H2O_STRLIT("/index.php"), 1);

    h2o_http2_casper_lookup(casper, H2O_STRLIT("/index.html"), 1);
    cookie = h2o_http2_casper_get_cookie(casper);
    ok(cookie.len != 0);
    cookie = h2o_strdup(((void*)0), cookie.base, cookie.len);

    h2o_http2_casper_destroy(casper);
    casper = h2o_http2_casper_create(13, 6);

    h2o_http2_casper_consume_cookie(casper, cookie.base, get_end_of_cookie_value(cookie.base, cookie.len));
    ok(h2o_http2_casper_lookup(casper, H2O_STRLIT("/index.html"), 0) == 1);
    ok(h2o_http2_casper_lookup(casper, H2O_STRLIT("/index.php"), 0) == 1);

    h2o_http2_casper_destroy(casper);
}
