
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * value; int * name; } ;
typedef TYPE_1__ git_attr_assignment ;


 int git__free (TYPE_1__*) ;

__attribute__((used)) static void git_attr_assignment__free(git_attr_assignment *assign)
{



 assign->name = ((void*)0);
 assign->value = ((void*)0);
 git__free(assign);
}
