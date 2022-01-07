
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etap_pre_exec_data {int control_me; int data_me; int control_remote; } ;


 int close (int ) ;
 int dup2 (int ,int) ;

__attribute__((used)) static void etap_pre_exec(void *arg)
{
 struct etap_pre_exec_data *data = arg;

 dup2(data->control_remote, 1);
 close(data->data_me);
 close(data->control_me);
}
