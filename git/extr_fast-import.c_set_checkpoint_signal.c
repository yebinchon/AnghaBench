
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_mask; int sa_handler; } ;
typedef int sa ;


 int SA_RESTART ;
 int SIGUSR1 ;
 int checkpoint_signal ;
 int memset (struct sigaction*,int ,int) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;

__attribute__((used)) static void set_checkpoint_signal(void)
{
 struct sigaction sa;

 memset(&sa, 0, sizeof(sa));
 sa.sa_handler = checkpoint_signal;
 sigemptyset(&sa.sa_mask);
 sa.sa_flags = SA_RESTART;
 sigaction(SIGUSR1, &sa, ((void*)0));
}
