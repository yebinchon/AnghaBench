
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,...) ;

__attribute__((used)) static void print_usage(FILE *out, const char *name)
{
 fprintf(out, "Syntax: %s [ OPTS ] [hostname] [port]\n", name);
 fprintf(out,
  "\n"
  "ncat like utility\n"
  "\n"
  "  -p   Specify source port to use\n"
  "  -s   Specify source address to use (*does* affect -l, unlike ncat)\n"
  "  -l   Bind and listen for incoming connections\n"
  "  -k   Accept multiple connections in listen mode\n"
  "  -S   Connect or listen with SSL\n"
  "\n"
  "  -v   Increase verbosity\n"
  "  -h   Print usage\n"
 );
}
