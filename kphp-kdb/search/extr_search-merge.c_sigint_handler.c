
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int exit (int ) ;
 int printf (char*) ;

__attribute__((used)) static void sigint_handler (const int sig) {
  printf("SIGINT handled.\n");

  exit(EXIT_SUCCESS);
}
