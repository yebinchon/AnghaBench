
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int reopen_logs () ;

__attribute__((used)) static void sigusr1_handler (const int sig) {
  reopen_logs ();
}
