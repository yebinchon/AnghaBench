
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int quicly_conn_t ;


 int QUICLY_ERROR_RECEIVED_STATELESS_RESET ;
 int QUICLY_PROBE (int ,int *,int ) ;
 int STATELESS_RESET_RECEIVE ;
 int UINT64_MAX ;
 int handle_close (int *,int ,int ,int ) ;
 int probe_now () ;
 int ptls_iovec_init (char*,int ) ;

__attribute__((used)) static int handle_stateless_reset(quicly_conn_t *conn)
{
    QUICLY_PROBE(STATELESS_RESET_RECEIVE, conn, probe_now());
    return handle_close(conn, QUICLY_ERROR_RECEIVED_STATELESS_RESET, UINT64_MAX, ptls_iovec_init("", 0));
}
