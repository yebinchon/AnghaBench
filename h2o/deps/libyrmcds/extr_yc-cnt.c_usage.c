
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* USAGE ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

void usage() {
    fprintf(stderr, "%s", USAGE);
    exit(1);
}
