
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* name; } ;
typedef TYPE_1__ updated_tip ;


 int git__free (TYPE_1__*) ;

void updated_tip_free(updated_tip *t)
{
 git__free(t->name);
 git__free(t);
}
