
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int fork () ;
 int vproc_transaction_begin (int ) ;

pid_t
regress_fork(void)
{
 pid_t pid = fork();



 return pid;
}
