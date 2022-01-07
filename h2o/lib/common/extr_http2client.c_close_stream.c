
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * body; } ;
struct TYPE_4__ {int * buf; int sending_link; } ;
struct TYPE_6__ {int _timeout; } ;
struct st_h2o_http2client_stream_t {TYPE_2__ input; TYPE_1__ output; TYPE_3__ super; int * conn; } ;


 int free (struct st_h2o_http2client_stream_t*) ;
 int h2o_buffer_dispose (int **) ;
 scalar_t__ h2o_linklist_is_linked (int *) ;
 int h2o_linklist_unlink (int *) ;
 scalar_t__ h2o_timer_is_linked (int *) ;
 int h2o_timer_unlink (int *) ;
 int unregister_stream (struct st_h2o_http2client_stream_t*) ;

__attribute__((used)) static void close_stream(struct st_h2o_http2client_stream_t *stream)
{
    if (stream->conn != ((void*)0)) {
        unregister_stream(stream);
    }

    if (h2o_timer_is_linked(&stream->super._timeout))
        h2o_timer_unlink(&stream->super._timeout);
    if (h2o_linklist_is_linked(&stream->output.sending_link))
        h2o_linklist_unlink(&stream->output.sending_link);

    if (stream->output.buf != ((void*)0))
        h2o_buffer_dispose(&stream->output.buf);
    h2o_buffer_dispose(&stream->input.body);

    free(stream);
}
