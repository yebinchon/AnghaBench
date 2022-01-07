
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
typedef TYPE_1__ git_index_entry ;


 int git__free (TYPE_1__*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void index_entry_free(git_index_entry *entry)
{
 if (!entry)
  return;

 memset(&entry->id, 0, sizeof(entry->id));
 git__free(entry);
}
