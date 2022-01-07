
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_refdb_backend ;
struct TYPE_5__ {int * backend; int * repo; } ;
typedef TYPE_1__ git_refdb ;


 int assert (int) ;
 scalar_t__ git_refdb_backend_fs (int **,int *) ;
 int git_refdb_free (TYPE_1__*) ;
 scalar_t__ git_refdb_new (TYPE_1__**,int *) ;

int git_refdb_open(git_refdb **out, git_repository *repo)
{
 git_refdb *db;
 git_refdb_backend *dir;

 assert(out && repo);

 *out = ((void*)0);

 if (git_refdb_new(&db, repo) < 0)
  return -1;


 if (git_refdb_backend_fs(&dir, repo) < 0) {
  git_refdb_free(db);
  return -1;
 }

 db->repo = repo;
 db->backend = dir;

 *out = db;
 return 0;
}
