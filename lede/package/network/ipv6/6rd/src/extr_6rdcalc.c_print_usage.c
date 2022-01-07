
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void print_usage()
{
 fprintf(stderr, "Usage: 6rdcalc <v6 prefix>/<mask> <v4 address>/<mask>\n");
 exit(1);
}
