
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {struct st_requests_status_ctx_t* base; } ;
struct st_requests_status_ctx_t {int mutex; TYPE_6__ req_data; int * logconf; } ;
struct TYPE_7__ {int pool; } ;
typedef TYPE_1__ h2o_req_t ;
struct TYPE_8__ {int * member_0; } ;
typedef TYPE_2__ h2o_iovec_t ;
typedef int h2o_globalconf_t ;


 int H2O_STRLIT (char*) ;
 int free (struct st_requests_status_ctx_t*) ;
 TYPE_2__ h2o_concat (int *,int ,TYPE_6__,int ) ;
 int h2o_iovec_init (int ) ;
 int h2o_logconf_dispose (int *) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static h2o_iovec_t requests_status_final(void *priv, h2o_globalconf_t *gconf, h2o_req_t *req)
{
    h2o_iovec_t ret = {((void*)0)};
    struct st_requests_status_ctx_t *rsc = priv;

    if (rsc->logconf != ((void*)0)) {
        ret = h2o_concat(&req->pool, h2o_iovec_init(H2O_STRLIT(",\n \"requests\": [")), rsc->req_data,
                         h2o_iovec_init(H2O_STRLIT("\n ]")));
        h2o_logconf_dispose(rsc->logconf);
    }
    free(rsc->req_data.base);
    pthread_mutex_destroy(&rsc->mutex);

    free(rsc);
    return ret;
}
