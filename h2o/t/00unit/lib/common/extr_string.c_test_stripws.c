
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int base; } ;
typedef TYPE_1__ h2o_iovec_t ;


 int H2O_STRLIT (char*) ;
 int h2o_memis (int ,int ,int ) ;
 TYPE_1__ h2o_str_stripws (int ) ;
 int ok (int ) ;

__attribute__((used)) static void test_stripws(void)
{
    h2o_iovec_t t;

    t = h2o_str_stripws(H2O_STRLIT(""));
    ok(h2o_memis(t.base, t.len, H2O_STRLIT("")));
    t = h2o_str_stripws(H2O_STRLIT("hello world"));
    ok(h2o_memis(t.base, t.len, H2O_STRLIT("hello world")));
    t = h2o_str_stripws(H2O_STRLIT("   hello world"));
    ok(h2o_memis(t.base, t.len, H2O_STRLIT("hello world")));
    t = h2o_str_stripws(H2O_STRLIT("hello world   "));
    ok(h2o_memis(t.base, t.len, H2O_STRLIT("hello world")));
    t = h2o_str_stripws(H2O_STRLIT("   hello world   "));
    ok(h2o_memis(t.base, t.len, H2O_STRLIT("hello world")));
    t = h2o_str_stripws(H2O_STRLIT("     "));
    ok(h2o_memis(t.base, t.len, H2O_STRLIT("")));
}
