
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char*) ;
 char* progname ;

__attribute__((used)) static void usage(void) {
  printf("Usage:\n"
         "\n"
         "  %s [-b <address>] [-h] [-p <port>]\n"
         "\n"
         "Options:\n"
         "\n"
         "  -b <hostname|address>  Bind to this address or hostname.\n"
         "                         Default: \"127.0.0.1\"\n"
         "  -h                     Show this help message.\n"
         "  -p <port>              Bind to this port number.  Default: 1080\n"
         "",
         progname);
  exit(1);
}
