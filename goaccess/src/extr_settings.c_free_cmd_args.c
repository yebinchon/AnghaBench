
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ******* iconfigfile; } ;


 TYPE_1__ conf ;
 int free (int *****) ;
 int nargc ;
 int ***** nargv ;

void
free_cmd_args (void)
{
  int i;
  if (nargc == 0)
    return;
  for (i = 0; i < nargc; i++)
    free (nargv[i]);
  free (nargv);
  free (conf.iconfigfile);
}
