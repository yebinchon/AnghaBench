
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int free (int ) ;
 TYPE_1__* tr2_sysenv_settings ;

void tr2_sysenv_release(void)
{
 int k;

 for (k = 0; k < ARRAY_SIZE(tr2_sysenv_settings); k++)
  free(tr2_sysenv_settings[k].value);
}
