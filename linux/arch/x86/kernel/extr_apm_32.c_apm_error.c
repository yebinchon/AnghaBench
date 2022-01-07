
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key; int msg; } ;


 int ERROR_COUNT ;
 TYPE_1__* error_table ;
 int pr_notice (char*,char*,int) ;

__attribute__((used)) static void apm_error(char *str, int err)
{
 int i;

 for (i = 0; i < ERROR_COUNT; i++)
  if (error_table[i].key == err)
   break;
 if (i < ERROR_COUNT)
  pr_notice("%s: %s\n", str, error_table[i].msg);
 else if (err < 0)
  pr_notice("%s: linux error code %i\n", str, err);
 else
  pr_notice("%s: unknown error code %#2.2x\n",
         str, err);
}
