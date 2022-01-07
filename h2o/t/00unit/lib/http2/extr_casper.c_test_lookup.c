
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int size; } ;
struct TYPE_7__ {TYPE_1__ keys; } ;
typedef TYPE_2__ h2o_http2_casper_t ;


 int H2O_STRLIT (char*) ;
 TYPE_2__* h2o_http2_casper_create (int,int) ;
 int h2o_http2_casper_destroy (TYPE_2__*) ;
 int h2o_http2_casper_lookup (TYPE_2__*,int ,int) ;
 int ok (int) ;

__attribute__((used)) static void test_lookup(void)
{
    h2o_http2_casper_t *casper;
    casper = h2o_http2_casper_create(13, 6);

    ok(h2o_http2_casper_lookup(casper, H2O_STRLIT("/index.html"), 0) == 0);
    ok(h2o_http2_casper_lookup(casper, H2O_STRLIT("/index.html"), 1) == 0);
    ok(casper->keys.size == 1);
    ok(h2o_http2_casper_lookup(casper, H2O_STRLIT("/index.html"), 0) == 1);
    ok(h2o_http2_casper_lookup(casper, H2O_STRLIT("/index.html"), 1) == 1);
    ok(casper->keys.size == 1);

    h2o_http2_casper_destroy(casper);
}
