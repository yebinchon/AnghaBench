
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int path; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;


 int INDEX_OWNER (int *) ;
 int index_entry_cpy (TYPE_1__*,TYPE_1__ const*) ;
 scalar_t__ index_entry_create (TYPE_1__**,int ,int ,int *,int) ;

__attribute__((used)) static int index_entry_dup(
 git_index_entry **out,
 git_index *index,
 const git_index_entry *src)
{
 if (index_entry_create(out, INDEX_OWNER(index), src->path, ((void*)0), 0) < 0)
  return -1;

 index_entry_cpy(*out, src);
 return 0;
}
