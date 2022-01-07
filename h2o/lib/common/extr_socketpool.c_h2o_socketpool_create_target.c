
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct sockaddr_storage {scalar_t__ ss_family; } ;
typedef int socklen_t ;
typedef int h2o_url_t ;
struct TYPE_21__ {int sockets; scalar_t__ leased_count; } ;
struct TYPE_20__ {scalar_t__ weight_m1; } ;
struct TYPE_18__ {int len; int bytes; } ;
struct TYPE_17__ {void* base; int len; } ;
struct TYPE_19__ {TYPE_4__ sockaddr; TYPE_3__ named_serv; } ;
struct TYPE_16__ {char* base; size_t len; } ;
struct TYPE_15__ {char* base; size_t len; } ;
struct TYPE_14__ {TYPE_2__ host; TYPE_1__ authority; } ;
struct TYPE_22__ {int type; TYPE_7__ _shared; TYPE_6__ conf; TYPE_5__ peer; TYPE_10__ url; } ;
typedef TYPE_8__ h2o_socketpool_target_t ;
struct TYPE_23__ {scalar_t__ weight_m1; } ;
typedef TYPE_9__ h2o_socketpool_target_conf_t ;
typedef int H2O_UINT16_LONGEST_STR ;


 scalar_t__ AF_UNIX ;


 int assert (int) ;
 int detect_target_type (int *,struct sockaddr_storage*,int*) ;
 int h2o_linklist_init_anchor (int *) ;
 void* h2o_mem_alloc (int) ;
 int h2o_strtolower (char*,size_t) ;
 int h2o_url_copy (int *,TYPE_10__*,int *) ;
 int h2o_url_get_port (TYPE_10__*) ;
 int memcpy (int *,struct sockaddr_storage*,int) ;
 int sprintf (void*,char*,unsigned int) ;

h2o_socketpool_target_t *h2o_socketpool_create_target(h2o_url_t *origin, h2o_socketpool_target_conf_t *lb_target_conf)
{
    struct sockaddr_storage sa;
    socklen_t salen;

    h2o_socketpool_target_t *target = h2o_mem_alloc(sizeof(*target));
    h2o_url_copy(((void*)0), &target->url, origin);
    assert(target->url.host.base[target->url.host.len] == '\0');
    target->type = detect_target_type(origin, &sa, &salen);
    if (!(target->type == 128 && sa.ss_family == AF_UNIX)) {
        h2o_strtolower(target->url.authority.base, target->url.authority.len);
        h2o_strtolower(target->url.host.base, target->url.host.len);
    }

    switch (target->type) {
    case 129:
        target->peer.named_serv.base = h2o_mem_alloc(sizeof(H2O_UINT16_LONGEST_STR));
        target->peer.named_serv.len = sprintf(target->peer.named_serv.base, "%u", (unsigned)h2o_url_get_port(&target->url));
        break;
    case 128:
        assert(salen <= sizeof(target->peer.sockaddr.bytes));
        memcpy(&target->peer.sockaddr.bytes, &sa, salen);
        target->peer.sockaddr.len = salen;
        break;
    }
    target->_shared.leased_count = 0;
    if (lb_target_conf != ((void*)0))
        target->conf.weight_m1 = lb_target_conf->weight_m1;
    else {
        target->conf.weight_m1 = 0;
    }

    h2o_linklist_init_anchor(&target->_shared.sockets);
    return target;
}
