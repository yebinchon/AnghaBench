
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sock; } ;
struct st_h2o_memcached_resumption_accept_data_t {TYPE_1__ super; int * get_req; } ;
typedef int h2o_iovec_t ;


 int h2o_socket_ssl_resume_server_handshake (int ,int ) ;

__attribute__((used)) static void memcached_resumption_on_get(h2o_iovec_t session_data, void *_accept_data)
{
    struct st_h2o_memcached_resumption_accept_data_t *accept_data = _accept_data;
    accept_data->get_req = ((void*)0);
    h2o_socket_ssl_resume_server_handshake(accept_data->super.sock, session_data);
}
