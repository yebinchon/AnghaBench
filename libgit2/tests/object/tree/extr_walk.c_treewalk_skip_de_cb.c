
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct treewalk_skip_data {scalar_t__ stop; scalar_t__ skip; int files; int dirs; } ;
typedef int git_tree_entry ;


 scalar_t__ GIT_OBJECT_TREE ;
 int GIT_UNUSED (char const*) ;
 char* git_tree_entry_name (int const*) ;
 scalar_t__ git_tree_entry_type (int const*) ;
 int strcmp (char const*,scalar_t__) ;

__attribute__((used)) static int treewalk_skip_de_cb(
 const char *root, const git_tree_entry *entry, void *payload)
{
 struct treewalk_skip_data *data = payload;
 const char *name = git_tree_entry_name(entry);

 GIT_UNUSED(root);

 if (git_tree_entry_type(entry) == GIT_OBJECT_TREE)
  data->dirs++;
 else
  data->files++;

 if (data->skip && !strcmp(name, data->skip))
  return 1;
 else if (data->stop && !strcmp(name, data->stop))
  return -1;
 else
  return 0;
}
