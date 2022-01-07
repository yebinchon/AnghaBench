
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; int base; } ;
struct st_expires_t {TYPE_1__ value; int mode; } ;
struct TYPE_7__ {int status; int headers; } ;
struct TYPE_8__ {TYPE_2__ res; int pool; } ;
typedef TYPE_3__ h2o_req_t ;
typedef int h2o_ostream_t ;
typedef int h2o_filter_t ;




 int H2O_TOKEN_CACHE_CONTROL ;
 int H2O_TOKEN_EXPIRES ;
 int assert (int ) ;
 int h2o_set_header (int *,int *,int ,int ,int ,int ) ;
 int h2o_set_header_token (int *,int *,int ,int ,int ) ;
 int h2o_setup_next_ostream (TYPE_3__*,int **) ;

__attribute__((used)) static void on_setup_ostream(h2o_filter_t *_self, h2o_req_t *req, h2o_ostream_t **slot)
{
    struct st_expires_t *self = (void *)_self;

    switch (req->res.status) {
    case 200:
    case 201:
    case 204:
    case 206:
    case 301:
    case 302:
    case 303:
    case 304:
    case 307:
        switch (self->mode) {
        case 129:
            h2o_set_header(&req->pool, &req->res.headers, H2O_TOKEN_EXPIRES, self->value.base, self->value.len, 0);
            break;
        case 128:
            h2o_set_header_token(&req->pool, &req->res.headers, H2O_TOKEN_CACHE_CONTROL, self->value.base, self->value.len);
            break;
        default:
            assert(0);
            break;
        }
        break;
    default:
        break;
    }

    h2o_setup_next_ostream(req, slot);
}
