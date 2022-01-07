
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int quicly_conn_t ;
typedef int quicly_closed_by_peer_t ;


 int QUICLY_ERROR_GET_ERROR_CODE (int) ;
 int QUICLY_ERROR_IS_QUIC_APPLICATION (int) ;
 scalar_t__ UINT64_MAX ;
 scalar_t__ memcmp (char const*,char*,int) ;
 int ok (int) ;
 int test_close_error_code ;

__attribute__((used)) static void test_closeed_by_peer(quicly_closed_by_peer_t *self, quicly_conn_t *conn, int err, uint64_t frame_type,
                                 const char *reason, size_t reason_len)
{
    ok(QUICLY_ERROR_IS_QUIC_APPLICATION(err));
    test_close_error_code = QUICLY_ERROR_GET_ERROR_CODE(err);
    ok(frame_type == UINT64_MAX);
    ok(reason_len == 8);
    ok(memcmp(reason, "good bye", 8) == 0);
}
