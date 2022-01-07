
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_name {unsigned int prio; int peeled; int * path; int sha1; scalar_t__ name_checked; int * tag; } ;
typedef int git_tag ;
typedef int git_repository ;
typedef int git_oidmap ;
typedef int git_oid ;


 int GIT_ERROR_CHECK_ALLOC (struct commit_name*) ;
 struct commit_name* find_commit_name (int *,int const*) ;
 int git__free (int *) ;
 struct commit_name* git__malloc (int) ;
 int * git__strdup (char const*) ;
 int git_oid_cpy (int *,int const*) ;
 scalar_t__ git_oidmap_set (int *,int *,struct commit_name*) ;
 int git_tag_free (int *) ;
 scalar_t__ replace_name (int **,int *,struct commit_name*,unsigned int,int const*) ;

__attribute__((used)) static int add_to_known_names(
 git_repository *repo,
 git_oidmap *names,
 const char *path,
 const git_oid *peeled,
 unsigned int prio,
 const git_oid *sha1)
{
 struct commit_name *e = find_commit_name(names, peeled);
 bool found = (e != ((void*)0));

 git_tag *tag = ((void*)0);
 if (replace_name(&tag, repo, e, prio, sha1)) {
  if (!found) {
   e = git__malloc(sizeof(struct commit_name));
   GIT_ERROR_CHECK_ALLOC(e);

   e->path = ((void*)0);
   e->tag = ((void*)0);
  }

  if (e->tag)
   git_tag_free(e->tag);
  e->tag = tag;
  e->prio = prio;
  e->name_checked = 0;
  git_oid_cpy(&e->sha1, sha1);
  git__free(e->path);
  e->path = git__strdup(path);
  git_oid_cpy(&e->peeled, peeled);

  if (!found && git_oidmap_set(names, &e->peeled, e) < 0)
   return -1;
 }
 else
  git_tag_free(tag);

 return 0;
}
