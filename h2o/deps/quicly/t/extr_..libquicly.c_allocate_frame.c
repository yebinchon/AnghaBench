
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int quicly_send_context_t ;
typedef int quicly_conn_t ;


 int _do_allocate_frame (int *,int *,size_t,int ) ;

__attribute__((used)) static int allocate_frame(quicly_conn_t *conn, quicly_send_context_t *s, size_t min_space)
{
    return _do_allocate_frame(conn, s, min_space, 0);
}
