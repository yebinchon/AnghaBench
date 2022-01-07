
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int EXIT_FAILURE ;
 TYPE_1__* commands ;
 int exit (int ) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static int usage(const char *prog)
{
 size_t i;

 fprintf(stderr, "usage: %s <cmd>...\n\nAvailable commands:\n\n", prog);
 for (i = 0; i < ARRAY_SIZE(commands); i++)
  fprintf(stderr, "\t%s\n", commands[i].name);

 exit(EXIT_FAILURE);
}
