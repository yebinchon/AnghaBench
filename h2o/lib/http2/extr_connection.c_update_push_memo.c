
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int url_hash ;
struct TYPE_11__ {char const* base; size_t len; } ;
struct TYPE_12__ {TYPE_3__ authority; TYPE_2__* scheme; } ;
struct TYPE_13__ {TYPE_4__ input; } ;
typedef TYPE_5__ h2o_req_t ;
struct TYPE_14__ {int * push_memo; } ;
typedef TYPE_6__ h2o_http2_conn_t ;
typedef int h2o_cache_hashcode_t ;
struct TYPE_9__ {char const* base; size_t len; } ;
struct TYPE_10__ {TYPE_1__ name; } ;


 int h2o_cache_calchash (char const*,size_t) ;
 int * h2o_cache_create (int ,int,int,int *) ;
 int h2o_cache_set (int *,int ,int ,int,int ) ;
 int h2o_iovec_init (int*,int) ;

__attribute__((used)) static int update_push_memo(h2o_http2_conn_t *conn, h2o_req_t *src_req, const char *abspath, size_t abspath_len)
{

    if (conn->push_memo == ((void*)0))
        conn->push_memo = h2o_cache_create(0, 1024, 1, ((void*)0));


    h2o_cache_hashcode_t url_hash = h2o_cache_calchash(src_req->input.scheme->name.base, src_req->input.scheme->name.len) ^
                                    h2o_cache_calchash(src_req->input.authority.base, src_req->input.authority.len) ^
                                    h2o_cache_calchash(abspath, abspath_len);
    return h2o_cache_set(conn->push_memo, 0, h2o_iovec_init(&url_hash, sizeof(url_hash)), url_hash, h2o_iovec_init(((void*)0), 0));
}
