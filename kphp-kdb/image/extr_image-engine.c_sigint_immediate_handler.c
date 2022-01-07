
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int kwrite (int,char*,int) ;

__attribute__((used)) static void sigint_immediate_handler (const int sig) {
  kwrite (2, "SIGINT handled immediately.\n", 28);
  exit (1);
}
