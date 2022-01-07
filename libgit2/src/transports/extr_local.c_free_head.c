
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* symref_target; struct TYPE_4__* name; } ;
typedef TYPE_1__ git_remote_head ;


 int git__free (TYPE_1__*) ;

__attribute__((used)) static void free_head(git_remote_head *head)
{
 git__free(head->name);
 git__free(head->symref_target);
 git__free(head);
}
