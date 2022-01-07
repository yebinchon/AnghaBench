
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*,...) ;
 int stderr ;

__attribute__((used)) static void show_usage(const char *arg0)
{
 fprintf(stderr, "usage: %s -d|-e [-i FILE] [-o FILE]\n\n", arg0);
 fprintf(stderr, "%-15s %s\n", "-d, --decrypt", "decrypt data");
 fprintf(stderr, "%-15s %s\n", "-e, --encrypt", "encrypt data");
 fprintf(stderr, "%-15s %s\n", "-i, --input", "intput file (defaults to stdin)");
 fprintf(stderr, "%-15s %s\n", "-o, --output", "output file (defaults to stdout)");
 exit(-1);
}
