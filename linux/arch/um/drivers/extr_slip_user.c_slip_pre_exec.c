
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slip_pre_exec_data {scalar_t__ stdin_fd; scalar_t__ stdout_fd; scalar_t__ close_me; } ;


 int close (scalar_t__) ;
 int dup2 (scalar_t__,int) ;

__attribute__((used)) static void slip_pre_exec(void *arg)
{
 struct slip_pre_exec_data *data = arg;

 if (data->stdin_fd >= 0)
  dup2(data->stdin_fd, 0);
 dup2(data->stdout_fd, 1);
 if (data->close_me >= 0)
  close(data->close_me);
}
