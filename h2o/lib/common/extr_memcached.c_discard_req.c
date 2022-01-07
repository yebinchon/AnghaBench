
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int message; int receiver; } ;
struct TYPE_7__ {TYPE_1__ get; } ;
struct TYPE_8__ {int type; TYPE_2__ data; } ;
typedef TYPE_3__ h2o_memcached_req_t ;



 int free_req (TYPE_3__*) ;
 int h2o_multithread_send_message (int ,int *) ;

__attribute__((used)) static void discard_req(h2o_memcached_req_t *req)
{
    switch (req->type) {
    case 128:
        h2o_multithread_send_message(req->data.get.receiver, &req->data.get.message);
        break;
    default:
        free_req(req);
        break;
    }
}
