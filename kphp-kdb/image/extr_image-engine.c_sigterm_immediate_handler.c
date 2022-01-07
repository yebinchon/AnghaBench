
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int kwrite (int,char*,int) ;

__attribute__((used)) static void sigterm_immediate_handler (const int sig) {
  kwrite (2, "SIGTERM handled immediately.\n", 29);
  exit (1);
}
