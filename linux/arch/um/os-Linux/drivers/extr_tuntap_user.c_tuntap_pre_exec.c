
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap_pre_exec_data {int close_me; int stdout_fd; } ;


 int close (int ) ;
 int dup2 (int ,int) ;

__attribute__((used)) static void tuntap_pre_exec(void *arg)
{
 struct tuntap_pre_exec_data *data = arg;

 dup2(data->stdout_fd, 1);
 close(data->close_me);
}
