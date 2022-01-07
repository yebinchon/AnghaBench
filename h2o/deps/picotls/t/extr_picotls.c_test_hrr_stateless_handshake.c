
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_HANDSHAKE_HRR_STATELESS ;
 int ok (int) ;
 int ptls_iovec_init (int *,int ) ;
 int sc_callcnt ;
 int test_handshake (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void test_hrr_stateless_handshake(void)
{
    sc_callcnt = 0;
    test_handshake(ptls_iovec_init(((void*)0), 0), TEST_HANDSHAKE_HRR_STATELESS, 0, 0, 0);
    ok(sc_callcnt == 1);
}
