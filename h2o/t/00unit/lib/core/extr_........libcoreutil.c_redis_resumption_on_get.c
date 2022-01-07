
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int sock; } ;
struct st_h2o_redis_resumption_accept_data_t {TYPE_1__ super; int * get_command; } ;
struct TYPE_9__ {scalar_t__ type; int len; int str; } ;
typedef TYPE_2__ redisReply ;
struct TYPE_10__ {int * base; } ;
typedef TYPE_3__ h2o_iovec_t ;


 scalar_t__ REDIS_REPLY_STRING ;
 int free (int *) ;
 TYPE_3__ h2o_decode_base64url (int *,int ,int ) ;
 TYPE_3__ h2o_iovec_init (int *,int ) ;
 int h2o_socket_ssl_resume_server_handshake (int ,TYPE_3__) ;

__attribute__((used)) static void redis_resumption_on_get(redisReply *reply, void *_accept_data, const char *errstr)
{
    struct st_h2o_redis_resumption_accept_data_t *accept_data = _accept_data;
    accept_data->get_command = ((void*)0);

    h2o_iovec_t session_data;
    if (reply != ((void*)0) && reply->type == REDIS_REPLY_STRING) {
        session_data = h2o_decode_base64url(((void*)0), reply->str, reply->len);
    } else {
        session_data = h2o_iovec_init(((void*)0), 0);
    }

    h2o_socket_ssl_resume_server_handshake(accept_data->super.sock, session_data);

    if (session_data.base != ((void*)0))
        free(session_data.base);
}
