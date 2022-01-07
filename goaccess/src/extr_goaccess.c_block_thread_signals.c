
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIGINT ;
 int SIGPIPE ;
 int SIGTERM ;
 int SIG_BLOCK ;
 int oldset ;
 int pthread_sigmask (int ,int *,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;

__attribute__((used)) static void
block_thread_signals (void)
{


  sigset_t sigset;
  sigemptyset (&sigset);
  sigaddset (&sigset, SIGINT);
  sigaddset (&sigset, SIGPIPE);
  sigaddset (&sigset, SIGTERM);
  pthread_sigmask (SIG_BLOCK, &sigset, &oldset);
}
