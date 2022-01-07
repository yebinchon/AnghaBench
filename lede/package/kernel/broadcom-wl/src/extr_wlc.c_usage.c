
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ desc; scalar_t__ name; } ;


 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 TYPE_1__* wlc_calls ;
 int wlc_calls_size ;

__attribute__((used)) static void usage(char *cmd)
{
 int i;
 fprintf(stderr, "Usage: %s <command> [<argument> ...]\n"
     "\n"
     "Available commands:\n", cmd);
 for (i = 0; i < wlc_calls_size; i++) {
  fprintf(stderr, "\t%-16s\t%s\n", wlc_calls[i].name ?: "", wlc_calls[i].desc ?: "");
 }
 fprintf(stderr, "\n");
 exit(1);
}
