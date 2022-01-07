
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ direction; int buffer_data; int buffer; int * current_stream; scalar_t__ rpc; int url; TYPE_2__* wrapped; } ;
typedef TYPE_1__ transport_smart ;
typedef int git_smart_subtransport_stream ;
struct TYPE_7__ {int (* action ) (int **,TYPE_2__*,int ,int ) ;} ;


 scalar_t__ GIT_DIRECTION_PUSH ;
 int GIT_ERROR_NET ;
 int GIT_SERVICE_RECEIVEPACK ;
 int assert (int) ;
 int git_error_set (int ,char*) ;
 int git_smart__recv_cb ;
 scalar_t__ git_smart__reset_stream (TYPE_1__*,int) ;
 int gitno_buffer_setup_callback (int *,int ,int,int ,TYPE_1__*) ;
 int stub1 (int **,TYPE_2__*,int ,int ) ;

int git_smart__get_push_stream(transport_smart *t, git_smart_subtransport_stream **stream)
{
 int error;

 if (t->rpc && git_smart__reset_stream(t, 0) < 0)
  return -1;

 if (GIT_DIRECTION_PUSH != t->direction) {
  git_error_set(GIT_ERROR_NET, "this operation is only valid for push");
  return -1;
 }

 if ((error = t->wrapped->action(stream, t->wrapped, t->url, GIT_SERVICE_RECEIVEPACK)) < 0)
  return error;


 assert(t->rpc || t->current_stream == *stream);


 t->current_stream = *stream;

 gitno_buffer_setup_callback(&t->buffer, t->buffer_data, sizeof(t->buffer_data), git_smart__recv_cb, t);

 return 0;
}
