
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int status; char* reason; int headers; } ;
struct TYPE_14__ {TYPE_1__ res; int pool; int path_normalized; } ;
typedef TYPE_2__ h2o_req_t ;
typedef int h2o_iovec_t ;
struct TYPE_15__ {int * member_1; int * member_0; } ;
typedef TYPE_3__ h2o_generator_t ;
struct TYPE_16__ {int size; int bytes; } ;
typedef TYPE_4__ h2o_buffer_t ;
typedef int DIR ;


 int H2O_SEND_STATE_FINAL ;
 int H2O_STRLIT (char*) ;
 int H2O_TOKEN_CONTENT_TYPE ;
 TYPE_4__* build_dir_listing_html (int *,int ,int *) ;
 int closedir (int *) ;
 int h2o_add_header (int *,int *,int ,int *,int ) ;
 int h2o_buffer_link_to_pool (TYPE_4__*,int *) ;
 int h2o_iovec_init (int ,int ) ;
 int h2o_send (TYPE_2__*,int *,int,int ) ;
 int h2o_send_error_503 (TYPE_2__*,char*,char*,int ) ;
 int h2o_send_inline (TYPE_2__*,int *,int ) ;
 int h2o_start_response (TYPE_2__*,TYPE_3__*) ;
 int * opendir (char const*) ;

__attribute__((used)) static int send_dir_listing(h2o_req_t *req, const char *path, size_t path_len, int is_get)
{
    static h2o_generator_t generator = {((void*)0), ((void*)0)};
    DIR *dp;
    h2o_buffer_t *body;
    h2o_iovec_t bodyvec;


    if ((dp = opendir(path)) == ((void*)0))
        return -1;
    body = build_dir_listing_html(&req->pool, req->path_normalized, dp);
    closedir(dp);

    if (body == ((void*)0)) {
        h2o_send_error_503(req, "Service Unavailable", "please try again later", 0);
        return 0;
    }

    bodyvec = h2o_iovec_init(body->bytes, body->size);
    h2o_buffer_link_to_pool(body, &req->pool);


    req->res.status = 200;
    req->res.reason = "OK";
    h2o_add_header(&req->pool, &req->res.headers, H2O_TOKEN_CONTENT_TYPE, ((void*)0), H2O_STRLIT("text/html; charset=utf-8"));


    if (!is_get) {
        h2o_send_inline(req, ((void*)0), 0);
        return 0;
    }


    h2o_start_response(req, &generator);
    h2o_send(req, &bodyvec, 1, H2O_SEND_STATE_FINAL);
    return 0;
}
