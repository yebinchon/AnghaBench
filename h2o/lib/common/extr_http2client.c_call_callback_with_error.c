
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int (* on_body ) (TYPE_4__*,char const*) ;int (* on_head ) (TYPE_4__*,char const*,int,int ,int ,int *,int ,int ) ;} ;
struct TYPE_10__ {TYPE_3__ _cb; } ;
struct TYPE_7__ {int (* proceed_req ) (TYPE_4__*,int ,int ) ;} ;
struct TYPE_8__ {int res; } ;
struct st_h2o_http2client_stream_t {TYPE_4__ super; TYPE_1__ streaming; TYPE_2__ state; } ;


 int H2O_SEND_STATE_ERROR ;



 int assert (int ) ;
 int h2o_iovec_init (int *,int ) ;
 int stub1 (TYPE_4__*,char const*,int,int ,int ,int *,int ,int ) ;
 int stub2 (TYPE_4__*,char const*) ;
 int stub3 (TYPE_4__*,int ,int ) ;

__attribute__((used)) static void call_callback_with_error(struct st_h2o_http2client_stream_t *stream, const char *errstr)
{
    assert(errstr != ((void*)0));
    switch (stream->state.res) {
    case 128:
        stream->super._cb.on_head(&stream->super, errstr, 0x200, 0, h2o_iovec_init(((void*)0), 0), ((void*)0), 0, 0);
        break;
    case 130:
        stream->super._cb.on_body(&stream->super, errstr);
        break;
    case 129:
        if (stream->streaming.proceed_req != ((void*)0)) {
            stream->streaming.proceed_req(&stream->super, 0, H2O_SEND_STATE_ERROR);
        }
        break;
    }
}
