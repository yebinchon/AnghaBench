
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * process_title ;
 int * uv__strdup (char*) ;

char** uv_setup_args(int argc, char** argv) {
  process_title = argc > 0 ? uv__strdup(argv[0]) : ((void*)0);
  return argv;
}
