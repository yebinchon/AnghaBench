
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* base; size_t len; } ;
typedef TYPE_1__ h2o_iovec_t ;


 int H2O_STRLIT (char*) ;
 int NEXT () ;
 TYPE_1__ h2o_iovec_init (int ) ;
 int h2o_memis (char const*,size_t,int ) ;
 char* h2o_next_token (TYPE_1__*,char,size_t*,TYPE_1__*) ;
 int ok (int) ;

__attribute__((used)) static void test_next_token2(void)
{
    h2o_iovec_t iter, value;
    const char *name;
    size_t name_len;







    iter = h2o_iovec_init(H2O_STRLIT("public, max-age=86400, must-revalidate"));
    if ((name = h2o_next_token(&iter, ',', &name_len, &value)) == ((void*)0)) { ok(0); return; };
    ok(h2o_memis(name, name_len, H2O_STRLIT("public")));
    ok(value.base == ((void*)0));
    ok(value.len == 0);
    if ((name = h2o_next_token(&iter, ',', &name_len, &value)) == ((void*)0)) { ok(0); return; };
    ok(h2o_memis(name, name_len, H2O_STRLIT("max-age")));
    ok(h2o_memis(value.base, value.len, H2O_STRLIT("86400")));
    if ((name = h2o_next_token(&iter, ',', &name_len, &value)) == ((void*)0)) { ok(0); return; };
    ok(h2o_memis(name, name_len, H2O_STRLIT("must-revalidate")));
    ok(value.base == ((void*)0));
    ok(value.len == 0);
    name = h2o_next_token(&iter, ',', &name_len, &value);
    ok(name == ((void*)0));

    iter = h2o_iovec_init(H2O_STRLIT("public, max-age = 86400 = c , must-revalidate="));
    if ((name = h2o_next_token(&iter, ',', &name_len, &value)) == ((void*)0)) { ok(0); return; };
    ok(h2o_memis(name, name_len, H2O_STRLIT("public")));
    ok(value.base == ((void*)0));
    ok(value.len == 0);
    if ((name = h2o_next_token(&iter, ',', &name_len, &value)) == ((void*)0)) { ok(0); return; };
    ok(h2o_memis(name, name_len, H2O_STRLIT("max-age")));
    ok(h2o_memis(value.base, value.len, H2O_STRLIT("86400 = c")));
    if ((name = h2o_next_token(&iter, ',', &name_len, &value)) == ((void*)0)) { ok(0); return; };
    ok(h2o_memis(name, name_len, H2O_STRLIT("must-revalidate")));
    name = h2o_next_token(&iter, ',', &name_len, &value);
    ok(h2o_memis(value.base, value.len, H2O_STRLIT("")));


}
