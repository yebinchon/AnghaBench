
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct set_gitdir_args {int index_file; int graft_file; int alternate_db; int object_dir; int commondir; } ;
struct repository {char* gitdir; char* commondir; int index_file; int graft_file; TYPE_1__* objects; } ;
struct TYPE_4__ {int path; int next; } ;
struct TYPE_3__ {char* alternate_db; TYPE_2__* odb; int * odb_tail; } ;


 int expand_base_dir (int *,int ,char*,char*) ;
 int free (char*) ;
 char* read_gitfile (char const*) ;
 int repo_set_commondir (struct repository*,int ) ;
 TYPE_2__* xcalloc (int,int) ;
 char* xstrdup (char const*) ;
 char* xstrdup_or_null (int ) ;

void repo_set_gitdir(struct repository *repo,
       const char *root,
       const struct set_gitdir_args *o)
{
 const char *gitfile = read_gitfile(root);





 char *old_gitdir = repo->gitdir;

 repo->gitdir = xstrdup(gitfile ? gitfile : root);
 free(old_gitdir);

 repo_set_commondir(repo, o->commondir);

 if (!repo->objects->odb) {
  repo->objects->odb = xcalloc(1, sizeof(*repo->objects->odb));
  repo->objects->odb_tail = &repo->objects->odb->next;
 }
 expand_base_dir(&repo->objects->odb->path, o->object_dir,
   repo->commondir, "objects");

 free(repo->objects->alternate_db);
 repo->objects->alternate_db = xstrdup_or_null(o->alternate_db);
 expand_base_dir(&repo->graft_file, o->graft_file,
   repo->commondir, "info/grafts");
 expand_base_dir(&repo->index_file, o->index_file,
   repo->gitdir, "index");
}
