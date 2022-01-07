
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {TYPE_7__* base; } ;
struct TYPE_13__ {TYPE_7__* base; } ;
struct TYPE_12__ {TYPE_7__* base; } ;
struct TYPE_15__ {TYPE_5__ path; TYPE_4__ host; TYPE_3__ authority; } ;
struct TYPE_10__ {TYPE_7__* base; } ;
struct TYPE_11__ {TYPE_1__ named_serv; } ;
struct TYPE_16__ {int type; TYPE_6__ url; TYPE_2__ peer; } ;
typedef TYPE_7__ h2o_socketpool_target_t ;




 int free (TYPE_7__*) ;

void h2o_socketpool_destroy_target(h2o_socketpool_target_t *target)
{
    switch (target->type) {
    case 129:
        free(target->peer.named_serv.base);
        break;
    case 128:
        break;
    }
    free(target->url.authority.base);
    free(target->url.host.base);
    free(target->url.path.base);
    free(target);
}
