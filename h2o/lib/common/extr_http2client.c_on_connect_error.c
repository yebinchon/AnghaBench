
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* on_connect ) (TYPE_2__*,char const*,int *,int *,int *,int ,int *,int *,int *,int *) ;} ;
struct TYPE_4__ {TYPE_1__ _cb; } ;
struct st_h2o_http2client_stream_t {TYPE_2__ super; } ;


 int assert (int ) ;
 int close_stream (struct st_h2o_http2client_stream_t*) ;
 int stub1 (TYPE_2__*,char const*,int *,int *,int *,int ,int *,int *,int *,int *) ;

__attribute__((used)) static void on_connect_error(struct st_h2o_http2client_stream_t *stream, const char *errstr)
{
    assert(errstr != ((void*)0));
    stream->super._cb.on_connect(&stream->super, errstr, ((void*)0), ((void*)0), ((void*)0), 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    close_stream(stream);
}
