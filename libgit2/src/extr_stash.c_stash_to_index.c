
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct stat {int dummy; } ;
typedef int git_repository ;
struct TYPE_9__ {int member_0; } ;
struct TYPE_10__ {char const* path; int id; TYPE_1__ member_0; } ;
typedef TYPE_2__ git_index_entry ;
struct TYPE_11__ {int distrust_filemode; } ;
typedef TYPE_3__ git_index ;


 int git_blob__create_from_paths (int *,struct stat*,int *,int *,char const*,int ,int) ;
 int git_index_add (TYPE_3__*,TYPE_2__*) ;
 int git_index_entry__init_from_stat (TYPE_2__*,struct stat*,int) ;
 int git_repository_index__weakptr (TYPE_3__**,int *) ;
 int git_repository_is_bare (int *) ;

__attribute__((used)) static int stash_to_index(
 git_repository *repo,
 git_index *index,
 const char *path)
{
 git_index *repo_index;
 git_index_entry entry = {{0}};
 struct stat st;
 int error;

 if (!git_repository_is_bare(repo) &&
     (error = git_repository_index__weakptr(&repo_index, repo)) < 0)
  return error;

 if ((error = git_blob__create_from_paths(
     &entry.id, &st, repo, ((void*)0), path, 0, 1)) < 0)
  return error;

 git_index_entry__init_from_stat(&entry, &st,
  (repo_index != ((void*)0) || !repo_index->distrust_filemode));

 entry.path = path;

 return git_index_add(index, &entry);
}
