
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int h2o_mem_pool_t ;
struct TYPE_9__ {int size; TYPE_2__* entries; int * member_0; } ;
typedef TYPE_3__ h2o_headers_t ;
struct TYPE_10__ {int buf; } ;
struct TYPE_7__ {char* base; int len; } ;
struct TYPE_8__ {TYPE_1__ value; int * name; } ;


 int H2O_STRLIT (char*) ;
 TYPE_5__* H2O_TOKEN_VARY ;
 int h2o_mem_clear_pool (int *) ;
 int h2o_mem_init_pool (int *) ;
 int h2o_memis (char*,int ,int ) ;
 int h2o_set_header_token (int *,TYPE_3__*,TYPE_5__*,int ) ;
 int ok (int) ;

__attribute__((used)) static void test_set_header_token(void)
{
    h2o_mem_pool_t pool;
    h2o_headers_t headers = {((void*)0)};

    h2o_mem_init_pool(&pool);

    h2o_set_header_token(&pool, &headers, H2O_TOKEN_VARY, H2O_STRLIT("cookie"));
    ok(headers.size == 1);
    ok(headers.entries[0].name == &H2O_TOKEN_VARY->buf);
    ok(h2o_memis(headers.entries[0].value.base, headers.entries[0].value.len, H2O_STRLIT("cookie")));
    h2o_set_header_token(&pool, &headers, H2O_TOKEN_VARY, H2O_STRLIT("accept-encoding"));
    ok(headers.size == 1);
    ok(headers.entries[0].name == &H2O_TOKEN_VARY->buf);
    ok(h2o_memis(headers.entries[0].value.base, headers.entries[0].value.len, H2O_STRLIT("cookie, accept-encoding")));

    headers.entries[0].value.base[0] = 'C';
    h2o_set_header_token(&pool, &headers, H2O_TOKEN_VARY, H2O_STRLIT("cookie"));
    ok(headers.size == 1);
    ok(headers.entries[0].name == &H2O_TOKEN_VARY->buf);
    ok(h2o_memis(headers.entries[0].value.base, headers.entries[0].value.len, H2O_STRLIT("Cookie, accept-encoding")));

    h2o_mem_clear_pool(&pool);
}
