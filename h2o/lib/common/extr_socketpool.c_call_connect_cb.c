
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int url; } ;
typedef TYPE_4__ h2o_socketpool_target_t ;
struct TYPE_12__ {TYPE_5__* tried; } ;
struct TYPE_14__ {size_t selected_target; TYPE_3__ lb; TYPE_2__* pool; void* data; TYPE_6__* sock; int (* cb ) (TYPE_6__*,char const*,void*,int *) ;} ;
typedef TYPE_5__ h2o_socketpool_connect_request_t ;
typedef int (* h2o_socketpool_connect_cb ) (TYPE_6__*,char const*,void*,int *) ;
struct TYPE_15__ {int * data; } ;
typedef TYPE_6__ h2o_socket_t ;
struct TYPE_10__ {TYPE_4__** entries; } ;
struct TYPE_11__ {TYPE_1__ targets; } ;


 int free (TYPE_5__*) ;

__attribute__((used)) static void call_connect_cb(h2o_socketpool_connect_request_t *req, const char *errstr)
{
    h2o_socketpool_connect_cb cb = req->cb;
    h2o_socket_t *sock = req->sock;
    void *data = req->data;
    h2o_socketpool_target_t *selected_target = req->pool->targets.entries[req->selected_target];

    if (req->lb.tried != ((void*)0)) {
        free(req->lb.tried);
    }

    free(req);

    if (sock != ((void*)0))
        sock->data = ((void*)0);
    cb(sock, errstr, data, &selected_target->url);
}
