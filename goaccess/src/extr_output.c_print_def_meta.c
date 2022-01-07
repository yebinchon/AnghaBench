
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ json_pretty_print; } ;
typedef int FILE ;


 TYPE_1__ conf ;
 int fpskeysval (int *,char*,char const*,int,int ) ;

__attribute__((used)) static void
print_def_meta (FILE * fp, const char *head, const char *desc, int sp)
{
  int isp = 0;

  if (conf.json_pretty_print)
    isp = sp + 1;

  fpskeysval (fp, "head", head, isp, 0);
  fpskeysval (fp, "desc", desc, isp, 0);
}
