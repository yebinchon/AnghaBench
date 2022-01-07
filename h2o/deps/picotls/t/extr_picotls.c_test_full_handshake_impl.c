
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_HANDSHAKE_1RTT ;
 int ok (int) ;
 int ptls_iovec_init (int *,int ) ;
 int sc_callcnt ;
 int test_handshake (int ,int ,int ,int,int) ;

__attribute__((used)) static void test_full_handshake_impl(int require_client_authentication)
{
    sc_callcnt = 0;

    test_handshake(ptls_iovec_init(((void*)0), 0), TEST_HANDSHAKE_1RTT, 0, 0, require_client_authentication);
    if (require_client_authentication) {
        ok(sc_callcnt == 2);
    } else {
        ok(sc_callcnt == 1);
    }

    test_handshake(ptls_iovec_init(((void*)0), 0), TEST_HANDSHAKE_1RTT, 0, 0, require_client_authentication);
    if (require_client_authentication) {
        ok(sc_callcnt == 4);
    } else {
        ok(sc_callcnt == 2);
    }

    test_handshake(ptls_iovec_init(((void*)0), 0), TEST_HANDSHAKE_1RTT, 0, 1, require_client_authentication);
    if (require_client_authentication) {
        ok(sc_callcnt == 6);
    } else {
        ok(sc_callcnt == 3);
    }
}
