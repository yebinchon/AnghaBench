
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote_ls_ctx {char* dentry_name; int flags; int path; scalar_t__ userData; } ;
struct object_id {int dummy; } ;


 int IS_DIR ;
 scalar_t__ get_oid_hex_from_objpath (char const*,struct object_id*) ;
 int one_remote_object (struct object_id*) ;
 int* remote_dir_exists ;
 int skip_prefix (char const*,char*,char const**) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static void process_ls_object(struct remote_ls_ctx *ls)
{
 unsigned int *parent = (unsigned int *)ls->userData;
 const char *path = ls->dentry_name;
 struct object_id oid;

 if (!strcmp(ls->path, ls->dentry_name) && (ls->flags & IS_DIR)) {
  remote_dir_exists[*parent] = 1;
  return;
 }

 if (!skip_prefix(path, "objects/", &path) ||
     get_oid_hex_from_objpath(path, &oid))
  return;

 one_remote_object(&oid);
}
