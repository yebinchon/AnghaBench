
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport {int cannot_reuse; int * smart_options; int * vtable; struct git_transport_data* data; } ;
struct git_transport_data {int options; scalar_t__ got_remote_heads; struct child_process* conn; int * fd; } ;
struct child_process {int in; int out; } ;


 int BUG (char*) ;
 int taken_over_vtable ;
 struct git_transport_data* xcalloc (int,int) ;

void transport_take_over(struct transport *transport,
    struct child_process *child)
{
 struct git_transport_data *data;

 if (!transport->smart_options)
  BUG("taking over transport requires non-NULL "
      "smart_options field.");

 data = xcalloc(1, sizeof(*data));
 data->options = *transport->smart_options;
 data->conn = child;
 data->fd[0] = data->conn->out;
 data->fd[1] = data->conn->in;
 data->got_remote_heads = 0;
 transport->data = data;

 transport->vtable = &taken_over_vtable;
 transport->smart_options = &(data->options);

 transport->cannot_reuse = 1;
}
