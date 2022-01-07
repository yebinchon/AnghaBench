
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int size; int ptr; } ;
struct proxy_stream {TYPE_3__* target; TYPE_2__* output; TYPE_2__ input; int source; int payload; TYPE_6__* filter; } ;
typedef int git_writestream ;
struct TYPE_12__ {int member_0; } ;
typedef TYPE_1__ git_error_state ;
typedef TYPE_2__ git_buf ;
struct TYPE_15__ {int (* apply ) (TYPE_6__*,int ,TYPE_2__*,TYPE_2__*,int ) ;} ;
struct TYPE_14__ {int (* close ) (TYPE_3__*) ;int (* write ) (TYPE_3__*,int ,int ) ;} ;


 int GIT_PASSTHROUGH ;
 int assert (struct proxy_stream*) ;
 int git_buf_sanitize (TYPE_2__*) ;
 int git_error_state_capture (TYPE_1__*,int) ;
 int git_error_state_restore (TYPE_1__*) ;
 int stub1 (TYPE_6__*,int ,TYPE_2__*,TYPE_2__*,int ) ;
 int stub2 (TYPE_3__*) ;
 int stub3 (TYPE_3__*,int ,int ) ;
 int stub4 (TYPE_3__*) ;

__attribute__((used)) static int proxy_stream_close(git_writestream *s)
{
 struct proxy_stream *proxy_stream = (struct proxy_stream *)s;
 git_buf *writebuf;
 git_error_state error_state = {0};
 int error;

 assert(proxy_stream);

 error = proxy_stream->filter->apply(
  proxy_stream->filter,
  proxy_stream->payload,
  proxy_stream->output,
  &proxy_stream->input,
  proxy_stream->source);

 if (error == GIT_PASSTHROUGH) {
  writebuf = &proxy_stream->input;
 } else if (error == 0) {
  git_buf_sanitize(proxy_stream->output);
  writebuf = proxy_stream->output;
 } else {


  git_error_state_capture(&error_state, error);
  proxy_stream->target->close(proxy_stream->target);
  git_error_state_restore(&error_state);
  return error;
 }

 if ((error = proxy_stream->target->write(
   proxy_stream->target, writebuf->ptr, writebuf->size)) == 0)
  error = proxy_stream->target->close(proxy_stream->target);

 return error;
}
