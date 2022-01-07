
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_iovec_t ;


 int H2O_STRLIT (char*) ;
 int NEXT () ;
 int h2o_iovec_init (int ) ;
 int h2o_memis (char const*,size_t,int ) ;
 char* h2o_next_token (int *,char,size_t*,int *) ;
 int ok (int) ;

__attribute__((used)) static void test_next_token(void)
{
    h2o_iovec_t iter;
    const char *token;
    size_t token_len;







    iter = h2o_iovec_init(H2O_STRLIT("public, max-age=86400, must-revalidate"));
    if ((token = h2o_next_token(&iter, ',', &token_len, ((void*)0))) == ((void*)0)) { ok(0); return; };
    ok(h2o_memis(token, token_len, H2O_STRLIT("public")));
    if ((token = h2o_next_token(&iter, ',', &token_len, ((void*)0))) == ((void*)0)) { ok(0); return; };
    ok(h2o_memis(token, token_len, H2O_STRLIT("max-age=86400")));
    if ((token = h2o_next_token(&iter, ',', &token_len, ((void*)0))) == ((void*)0)) { ok(0); return; };
    ok(h2o_memis(token, token_len, H2O_STRLIT("must-revalidate")));
    token = h2o_next_token(&iter, ',', &token_len, ((void*)0));
    ok(token == ((void*)0));

    iter = h2o_iovec_init(H2O_STRLIT("  public  ,max-age=86400  ,"));
    if ((token = h2o_next_token(&iter, ',', &token_len, ((void*)0))) == ((void*)0)) { ok(0); return; };
    ok(h2o_memis(token, token_len, H2O_STRLIT("public")));
    if ((token = h2o_next_token(&iter, ',', &token_len, ((void*)0))) == ((void*)0)) { ok(0); return; };
    ok(h2o_memis(token, token_len, H2O_STRLIT("max-age=86400")));
    token = h2o_next_token(&iter, ',', &token_len, ((void*)0));
    ok(token == ((void*)0));

    iter = h2o_iovec_init(H2O_STRLIT(""));
    token = h2o_next_token(&iter, ',', &token_len, ((void*)0));
    ok(token == ((void*)0));

    iter = h2o_iovec_init(H2O_STRLIT(", ,a, "));
    if ((token = h2o_next_token(&iter, ',', &token_len, ((void*)0))) == ((void*)0)) { ok(0); return; };
    ok(token_len == 0);
    if ((token = h2o_next_token(&iter, ',', &token_len, ((void*)0))) == ((void*)0)) { ok(0); return; };
    ok(token_len == 0);
    if ((token = h2o_next_token(&iter, ',', &token_len, ((void*)0))) == ((void*)0)) { ok(0); return; };
    ok(h2o_memis(token, token_len, H2O_STRLIT("a")));
    token = h2o_next_token(&iter, ',', &token_len, ((void*)0));
    ok(token == ((void*)0));


}
