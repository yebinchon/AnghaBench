
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getpid () ;
 int sigusr2_pid ;

__attribute__((used)) static void sigusr2_handler (const int sig) {
  sigusr2_pid = getpid ();
}
