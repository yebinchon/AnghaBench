
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int suspect; } ;
typedef TYPE_1__ git_blame__entry ;


 int git__free (TYPE_1__*) ;
 int origin_decref (int ) ;

void git_blame__free_entry(git_blame__entry *ent)
{
 if (!ent) return;
 origin_decref(ent->suspect);
 git__free(ent);
}
