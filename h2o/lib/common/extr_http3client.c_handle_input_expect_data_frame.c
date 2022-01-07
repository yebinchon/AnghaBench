
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int (* on_body ) (TYPE_3__*,char*) ;} ;
struct TYPE_7__ {TYPE_1__ _cb; } ;
struct st_h2o_http3client_req_t {int (* handle_input ) (struct st_h2o_http3client_req_t*,int const**,int const*,int,char const**) ;int bytes_left_in_data_frame; TYPE_3__ super; } ;
struct TYPE_6__ {int type; int length; } ;
typedef TYPE_2__ h2o_http3_read_frame_t ;


 int H2O_HTTP3_ERROR_INCOMPLETE ;

 int H2O_HTTP3_STREAM_TYPE_REQUEST ;
 int h2o_http3_read_frame (TYPE_2__*,int,int ,int const**,int const*,char const**) ;
 int handle_input_data_payload (struct st_h2o_http3client_req_t*,int const**,int const*,int,char const**) ;
 int stub1 (TYPE_3__*,char*) ;

int handle_input_expect_data_frame(struct st_h2o_http3client_req_t *req, const uint8_t **src, const uint8_t *src_end, int err,
                                   const char **err_desc)
{
    h2o_http3_read_frame_t frame;
    int ret;

    if ((ret = h2o_http3_read_frame(&frame, 1, H2O_HTTP3_STREAM_TYPE_REQUEST, src, src_end, err_desc)) != 0) {

        if (ret == H2O_HTTP3_ERROR_INCOMPLETE && err == 0)
            return ret;
        req->super._cb.on_body(&req->super, "malformed frame");
        return ret;
    }

    switch (frame.type) {
    case 128:
        break;
    default:

        return 0;
    }

    req->bytes_left_in_data_frame = frame.length;



    req->handle_input = handle_input_data_payload;
    return handle_input_data_payload(req, src, src_end, err, err_desc);
}
