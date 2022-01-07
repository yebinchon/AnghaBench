
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGPIPE ;
 int SIG_IGN ;
 int _IONBF ;
 int executable_path ;
 int perror (char*) ;
 int * realpath (char*,int ) ;
 int setvbuf (int ,int *,int ,int ) ;
 int signal (int ,int ) ;
 int stderr ;
 int stdout ;

int platform_init(int argc, char **argv) {

  setvbuf(stdout, ((void*)0), _IONBF, 0);
  setvbuf(stderr, ((void*)0), _IONBF, 0);
  signal(SIGPIPE, SIG_IGN);

  if (realpath(argv[0], executable_path) == ((void*)0)) {
    perror("realpath");
    return -1;
  }

  return 0;
}
