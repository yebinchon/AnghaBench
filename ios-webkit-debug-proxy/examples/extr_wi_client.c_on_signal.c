
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int quit_flag ;
 int stderr ;

__attribute__((used)) static void on_signal(int sig) {
  fprintf(stderr, "Exiting...\n");
  quit_flag++;
}
