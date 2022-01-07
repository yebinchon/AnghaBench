
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int off; int base; } ;
typedef TYPE_1__ ptls_buffer_t ;
typedef int ptls_base64_decode_state_t ;


 scalar_t__ memcmp (int ,char*,int) ;
 int ok (int) ;
 int ptls_base64_decode (char*,int *,TYPE_1__*) ;
 int ptls_base64_decode_init (int *) ;
 int ptls_buffer_dispose (TYPE_1__*) ;
 int ptls_buffer_init (TYPE_1__*,char*,int ) ;

__attribute__((used)) static void test_base64_decode(void)
{
    ptls_base64_decode_state_t state;
    ptls_buffer_t buf;
    int ret;

    ptls_buffer_init(&buf, "", 0);

    ptls_base64_decode_init(&state);
    ret = ptls_base64_decode("aGVsbG8gd29ybGQ=", &state, &buf);
    ok(ret == 0);
    ok(buf.off == 11);
    ok(memcmp(buf.base, "hello world", 11) == 0);

    buf.off = 0;

    ptls_base64_decode_init(&state);
    ret = ptls_base64_decode("a$b", &state, &buf);
    ok(ret != 0);

    buf.off = 0;

    ptls_base64_decode_init(&state);
    ret = ptls_base64_decode("a\xFF"
                             "b",
                             &state, &buf);
    ok(ret != 0);

    ptls_buffer_dispose(&buf);
}
