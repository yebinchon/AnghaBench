
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*,...) ;
 int fputs (char*,int ) ;
 int stderr ;

__attribute__((used)) static void usage(const char *msg, const char *arg)
{
 fputs("usage: remote add <name> <url>\n", stderr);
 fputs("       remote remove <name>\n", stderr);
 fputs("       remote rename <old> <new>\n", stderr);
 fputs("       remote set-url [--push] <name> <newurl>\n", stderr);
 fputs("       remote show [-v|--verbose]\n", stderr);

 if (msg && !arg)
  fprintf(stderr, "\n%s\n", msg);
 else if (msg && arg)
  fprintf(stderr, "\n%s: %s\n", msg, arg);
 exit(1);
}
