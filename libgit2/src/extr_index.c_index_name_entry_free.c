
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* theirs; struct TYPE_4__* ours; struct TYPE_4__* ancestor; } ;
typedef TYPE_1__ git_index_name_entry ;


 int git__free (TYPE_1__*) ;

__attribute__((used)) static void index_name_entry_free(git_index_name_entry *ne)
{
 if (!ne)
  return;
 git__free(ne->ancestor);
 git__free(ne->ours);
 git__free(ne->theirs);
 git__free(ne);
}
