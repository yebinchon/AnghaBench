
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int h2o_mem_pool_t ;
struct TYPE_3__ {char* base; scalar_t__ len; int member_0; } ;
typedef TYPE_1__ h2o_iovec_t ;


 int H2O_STRLIT (char*) ;
 int h2o_base64_encode (char*,int const*,scalar_t__,int) ;
 TYPE_1__ h2o_decode_base64url (int *,char*,int ) ;
 int h2o_mem_clear_pool (int *) ;
 int h2o_mem_init_pool (int *) ;
 int ok (int) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void test_decode_base64(void)
{
    h2o_mem_pool_t pool;
    char buf[256];

    h2o_mem_init_pool(&pool);

    h2o_iovec_t src = {H2O_STRLIT("The quick brown fox jumps over the lazy dog.")}, decoded;
    h2o_base64_encode(buf, (const uint8_t *)src.base, src.len, 1);
    ok(strcmp(buf, "VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wcyBvdmVyIHRoZSBsYXp5IGRvZy4") == 0);
    decoded = h2o_decode_base64url(&pool, buf, strlen(buf));
    ok(src.len == decoded.len);
    ok(strcmp(decoded.base, src.base) == 0);

    h2o_mem_clear_pool(&pool);
}
