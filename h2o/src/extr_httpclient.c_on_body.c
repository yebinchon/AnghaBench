
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ctx; TYPE_3__** buf; } ;
typedef TYPE_1__ h2o_httpclient_t ;
struct TYPE_5__ {int size; int bytes; } ;


 scalar_t__ cnt_left ;
 int fflush (int ) ;
 int fileno (int ) ;
 int ftruncate (int ,int ) ;
 int fwrite (int ,int,int ,int ) ;
 int h2o_buffer_consume (TYPE_3__**,int ) ;
 char const* h2o_httpclient_error_is_eos ;
 int h2o_mem_clear_pool (int *) ;
 int on_error (int ,char const*) ;
 int pool ;
 int start_request (int ) ;
 int stdout ;

__attribute__((used)) static int on_body(h2o_httpclient_t *client, const char *errstr)
{
    if (errstr != ((void*)0) && errstr != h2o_httpclient_error_is_eos) {
        on_error(client->ctx, errstr);
        return -1;
    }

    fwrite((*client->buf)->bytes, 1, (*client->buf)->size, stdout);
    fflush(stdout);
    h2o_buffer_consume(&(*client->buf), (*client->buf)->size);

    if (errstr == h2o_httpclient_error_is_eos) {
        if (--cnt_left != 0) {

            h2o_mem_clear_pool(&pool);
            ftruncate(fileno(stdout), 0);
            start_request(client->ctx);
        }
    }

    return 0;
}
