
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote_ls_ctx {char* dentry_name; int dentry_flags; int path; } ;


 int IS_DIR ;
 int fprintf (int ,char*,char*) ;
 int one_remote_ref (char*) ;
 int stderr ;
 int strcmp (int ,char*) ;

__attribute__((used)) static void process_ls_ref(struct remote_ls_ctx *ls)
{
 if (!strcmp(ls->path, ls->dentry_name) && (ls->dentry_flags & IS_DIR)) {
  fprintf(stderr, "  %s\n", ls->dentry_name);
  return;
 }

 if (!(ls->dentry_flags & IS_DIR))
  one_remote_ref(ls->dentry_name);
}
