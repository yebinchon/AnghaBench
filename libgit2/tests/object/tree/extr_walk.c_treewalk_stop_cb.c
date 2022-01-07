
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char git_tree_entry ;


 int GIT_UNUSED (char const*) ;

__attribute__((used)) static int treewalk_stop_cb(
 const char *root, const git_tree_entry *entry, void *payload)
{
 int *count = payload;

 GIT_UNUSED(root);
 GIT_UNUSED(entry);

 (*count) += 1;

 return (*count == 2) ? -123 : 0;
}
