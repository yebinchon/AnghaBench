
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_HANDSHAKE_KEY_UPDATE ;
 int ptls_iovec_init (int *,int ) ;
 int test_handshake (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void test_key_update(void)
{
    test_handshake(ptls_iovec_init(((void*)0), 0), TEST_HANDSHAKE_KEY_UPDATE, 0, 0, 0);
}
