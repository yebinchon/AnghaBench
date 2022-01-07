
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void git_tree_entry ;


 int GIT_UNUSED (void*) ;

__attribute__((used)) static int treewalk_stop_immediately_cb(
 const char *root, const git_tree_entry *entry, void *payload)
{
 GIT_UNUSED(root);
 GIT_UNUSED(entry);
 GIT_UNUSED(payload);
 return -100;
}
