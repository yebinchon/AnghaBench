
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; char* args; char* description; } ;


 TYPE_1__* CMD ;
 char* FullVersionStr ;
 int exit (int) ;
 int printf (char*,...) ;

void usage (void) {
  int k;
  printf ("%s\n", FullVersionStr);
  printf ("usage: tlclient [-v] [-r] [-a<hostname>] [-p<port>] [-u<username>] [-b<backlog>] [-c<max-conn>] [-l<log-name>] <scheme.tl>\n"
   "\tParsing SCHEME expressions, sending RPC requests to Kitten PHP, unserialize obtained result.\n"
   "\t-v\toutput statistical and debug information into stderr\n"
    "\t-A<auth_key_id>\tauth_key_id as unsigned long long hex number\n"
    "\t\tif auth_key_id is zero (auth_key_id, session_id, message_id will not sent after req_id)\n"
    "\t-S<session_id>\tsession_id as unsigned long long hex number\n"
  );

  printf ("\ntlclient commands:\n");
  for (k = 0; CMD[k].name; k++) {
    printf ("%s %s\t%s\n", CMD[k].name, CMD[k].args ? CMD[k].args : "", CMD[k].description);
  }
  exit (2);
}
