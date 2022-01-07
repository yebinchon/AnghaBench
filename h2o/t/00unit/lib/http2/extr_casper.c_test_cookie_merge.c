
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int len; int base; } ;
typedef TYPE_2__ h2o_iovec_t ;
struct TYPE_11__ {int size; } ;
struct TYPE_13__ {TYPE_1__ keys; } ;
typedef TYPE_3__ h2o_http2_casper_t ;


 int H2O_STRLIT (char*) ;
 int get_end_of_cookie_value (int ,int ) ;
 int h2o_http2_casper_consume_cookie (TYPE_3__*,int ,int ) ;
 TYPE_3__* h2o_http2_casper_create (int,int) ;
 int h2o_http2_casper_destroy (TYPE_3__*) ;
 TYPE_2__ h2o_http2_casper_get_cookie (TYPE_3__*) ;
 int h2o_http2_casper_lookup (TYPE_3__*,int ,int) ;
 TYPE_2__ h2o_strdup (int *,int ,int ) ;
 int ok (int) ;

__attribute__((used)) static void test_cookie_merge(void)
{
    h2o_http2_casper_t *casper;

    casper = h2o_http2_casper_create(13, 6);
    h2o_http2_casper_lookup(casper, H2O_STRLIT("/index.html"), 1);
    h2o_iovec_t cookie1 = h2o_http2_casper_get_cookie(casper);
    cookie1 = h2o_strdup(((void*)0), cookie1.base, cookie1.len);
    h2o_http2_casper_destroy(casper);

    casper = h2o_http2_casper_create(13, 6);
    h2o_http2_casper_lookup(casper, H2O_STRLIT("/index.php"), 1);
    h2o_iovec_t cookie2 = h2o_http2_casper_get_cookie(casper);
    cookie2 = h2o_strdup(((void*)0), cookie2.base, cookie2.len);
    h2o_http2_casper_destroy(casper);

    casper = h2o_http2_casper_create(13, 6);
    h2o_http2_casper_consume_cookie(casper, cookie1.base, get_end_of_cookie_value(cookie1.base, cookie1.len));
    h2o_http2_casper_consume_cookie(casper, cookie1.base, get_end_of_cookie_value(cookie1.base, cookie1.len));
    ok(casper->keys.size == 1);
    ok(h2o_http2_casper_lookup(casper, H2O_STRLIT("/index.html"), 0) == 1);
    h2o_http2_casper_consume_cookie(casper, cookie2.base, get_end_of_cookie_value(cookie2.base, cookie2.len));
    ok(casper->keys.size == 2);
    ok(h2o_http2_casper_lookup(casper, H2O_STRLIT("/index.html"), 0) == 1);
    ok(h2o_http2_casper_lookup(casper, H2O_STRLIT("/index.php"), 0) == 1);
    h2o_http2_casper_destroy(casper);
}
