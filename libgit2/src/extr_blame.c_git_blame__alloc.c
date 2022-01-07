
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ git_blame_options ;
struct TYPE_8__ {int mailmap; int paths; int * path; int hunks; TYPE_1__ options; int * repository; } ;
typedef TYPE_2__ git_blame ;


 int GIT_BLAME_USE_MAILMAP ;
 TYPE_2__* git__calloc (int,int) ;
 int * git__strdup (char const*) ;
 int git_blame_free (TYPE_2__*) ;
 scalar_t__ git_mailmap_from_repository (int *,int *) ;
 scalar_t__ git_vector_init (int *,int,int ) ;
 scalar_t__ git_vector_insert (int *,int *) ;
 int hunk_cmp ;
 int paths_cmp ;

git_blame* git_blame__alloc(
 git_repository *repo,
 git_blame_options opts,
 const char *path)
{
 git_blame *gbr = git__calloc(1, sizeof(git_blame));
 if (!gbr)
  return ((void*)0);

 gbr->repository = repo;
 gbr->options = opts;

 if (git_vector_init(&gbr->hunks, 8, hunk_cmp) < 0 ||
  git_vector_init(&gbr->paths, 8, paths_cmp) < 0 ||
  (gbr->path = git__strdup(path)) == ((void*)0) ||
  git_vector_insert(&gbr->paths, git__strdup(path)) < 0)
 {
  git_blame_free(gbr);
  return ((void*)0);
 }

 if (opts.flags & GIT_BLAME_USE_MAILMAP &&
     git_mailmap_from_repository(&gbr->mailmap, repo) < 0) {
  git_blame_free(gbr);
  return ((void*)0);
 }

 return gbr;
}
