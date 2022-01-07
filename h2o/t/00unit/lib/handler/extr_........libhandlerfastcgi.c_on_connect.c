
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct st_fcgi_generator_t {TYPE_1__* handler; TYPE_3__* sock; int req; int * connect_req; } ;
struct TYPE_10__ {int size; int entries; } ;
typedef TYPE_2__ iovec_vector_t ;
typedef int h2o_url_t ;
struct TYPE_11__ {struct st_fcgi_generator_t* data; } ;
typedef TYPE_3__ h2o_socket_t ;
struct TYPE_12__ {int io_timeout; } ;
struct TYPE_9__ {TYPE_8__ config; } ;


 int MODULE_NAME ;
 int build_request (int ,TYPE_2__*,int,int,TYPE_8__*) ;
 int errorclose (struct st_fcgi_generator_t*) ;
 int h2o_req_log_error (int ,int ,char*,char const*) ;
 int h2o_socket_read_start (TYPE_3__*,int ) ;
 int h2o_socket_write (TYPE_3__*,int ,int ,int ) ;
 int on_read ;
 int on_rw_timeout ;
 int on_send_complete ;
 int set_timeout (struct st_fcgi_generator_t*,int ,int ) ;

__attribute__((used)) static void on_connect(h2o_socket_t *sock, const char *errstr, void *data, h2o_url_t *_dummy)
{
    struct st_fcgi_generator_t *generator = data;
    iovec_vector_t vecs;

    generator->connect_req = ((void*)0);

    if (sock == ((void*)0)) {
        h2o_req_log_error(generator->req, MODULE_NAME, "connection failed:%s", errstr);
        errorclose(generator);
        return;
    }

    generator->sock = sock;
    sock->data = generator;

    build_request(generator->req, &vecs, 1, 65535, &generator->handler->config);


    h2o_socket_write(generator->sock, vecs.entries, vecs.size, on_send_complete);

    set_timeout(generator, generator->handler->config.io_timeout, on_rw_timeout);


    h2o_socket_read_start(sock, on_read);
}
