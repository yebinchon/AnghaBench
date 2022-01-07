
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport {struct git_transport_data* data; } ;
struct git_transport_data {scalar_t__ conn; int * fd; scalar_t__ got_remote_heads; } ;


 int close (int ) ;
 int finish_connect (scalar_t__) ;
 int free (struct git_transport_data*) ;
 int packet_flush (int ) ;

__attribute__((used)) static int disconnect_git(struct transport *transport)
{
 struct git_transport_data *data = transport->data;
 if (data->conn) {
  if (data->got_remote_heads)
   packet_flush(data->fd[1]);
  close(data->fd[0]);
  close(data->fd[1]);
  finish_connect(data->conn);
 }

 free(data);
 return 0;
}
