
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errcnt ;
 int fprintf (int ,char*,...) ;
 char* progname ;
 int stderr ;

__attribute__((used)) static void error(char *fmt, char *msg) {
 fprintf(stderr, "%s: ", progname);
 fprintf(stderr, fmt, msg);
 fprintf(stderr, "\n");
 errcnt++;
}
