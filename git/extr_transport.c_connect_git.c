
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport {int url; struct git_transport_data* data; } ;
struct git_transport_data {int* fd; int conn; } ;


 int git_connect (int*,int ,char const*,int ) ;

__attribute__((used)) static int connect_git(struct transport *transport, const char *name,
         const char *executable, int fd[2])
{
 struct git_transport_data *data = transport->data;
 data->conn = git_connect(data->fd, transport->url,
     executable, 0);
 fd[0] = data->fd[0];
 fd[1] = data->fd[1];
 return 0;
}
