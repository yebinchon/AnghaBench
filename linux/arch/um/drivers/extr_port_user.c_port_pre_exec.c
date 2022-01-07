
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_pre_exec_data {int pipe_fd; int sock_fd; } ;


 int SHUT_RD ;
 int close (int ) ;
 int dup2 (int ,int) ;
 int shutdown (int,int ) ;

__attribute__((used)) static void port_pre_exec(void *arg)
{
 struct port_pre_exec_data *data = arg;

 dup2(data->sock_fd, 0);
 dup2(data->sock_fd, 1);
 dup2(data->sock_fd, 2);
 close(data->sock_fd);
 dup2(data->pipe_fd, 3);
 shutdown(3, SHUT_RD);
 close(data->pipe_fd);
}
