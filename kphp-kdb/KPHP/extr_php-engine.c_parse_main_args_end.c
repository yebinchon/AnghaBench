
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int optind ;
 int usage () ;

void parse_main_args_end (int argc, char *argv[]) {
  if (argc != optind) {
    usage();
  }
}
