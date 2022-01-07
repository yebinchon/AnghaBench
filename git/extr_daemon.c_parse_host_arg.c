
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostinfo {int saw_extended_args; scalar_t__ hostname_lookup_done; int hostname; int tcp_port; } ;


 int canonicalize_client (int *,char*) ;
 int die (char*) ;
 int loginfo (char*,char*) ;
 int parse_host_and_port (char*,char**,char**) ;
 int sanitize_client (int *,char*) ;
 int strlen (char*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;

__attribute__((used)) static char *parse_host_arg(struct hostinfo *hi, char *extra_args, int buflen)
{
 char *val;
 int vallen;
 char *end = extra_args + buflen;

 if (extra_args < end && *extra_args) {
  hi->saw_extended_args = 1;
  if (strncasecmp("host=", extra_args, 5) == 0) {
   val = extra_args + 5;
   vallen = strlen(val) + 1;
   loginfo("Extended attribute \"host\": %s", val);
   if (*val) {

    char *host;
    char *port;
    parse_host_and_port(val, &host, &port);
    if (port)
     sanitize_client(&hi->tcp_port, port);
    canonicalize_client(&hi->hostname, host);
    hi->hostname_lookup_done = 0;
   }


   extra_args = val + vallen;
  }
  if (extra_args < end && *extra_args)
   die("Invalid request");
 }

 return extra_args;
}
