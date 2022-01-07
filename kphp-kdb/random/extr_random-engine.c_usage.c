
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* FullVersionStr ;
 int exit (int) ;
 int printf (char*,char*) ;

void usage (void) {
  printf ("usage: random-engine [-h] [-v] [-N<key-len>] [-s<buffer-size>] [-p<port>] [-u<username>] [-b<backlog>] [-c<max-conn>] [-l<logname>] <password-file> \n"
      "\t%s\n"
      "\tGenerates random bytes.\n"
      "\t-v\toutput statistical and debug information into stderr\n"
      "\t[-N<key-len>]\tset Blum-Blum-Shub key-len in bits (default is 2048 bits).\n"
      "\t[-s<buffer-size>]\tset random buffer size.\n",
      FullVersionStr);
  exit (2);
}
