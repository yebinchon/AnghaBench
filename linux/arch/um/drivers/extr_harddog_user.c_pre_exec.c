
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dog_data {int * close_me; int stdout_fd; int stdin_fd; } ;


 int close (int ) ;
 int dup2 (int ,int) ;

__attribute__((used)) static void pre_exec(void *d)
{
 struct dog_data *data = d;

 dup2(data->stdin_fd, 0);
 dup2(data->stdout_fd, 1);
 dup2(data->stdout_fd, 2);
 close(data->stdin_fd);
 close(data->stdout_fd);
 close(data->close_me[0]);
 close(data->close_me[1]);
}
