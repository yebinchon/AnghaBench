
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_6__ {int * repo; } ;
typedef TYPE_1__ git_refdb ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int GIT_REFCOUNT_INC (TYPE_1__*) ;
 int assert (int) ;
 TYPE_1__* git__calloc (int,int) ;

int git_refdb_new(git_refdb **out, git_repository *repo)
{
 git_refdb *db;

 assert(out && repo);

 db = git__calloc(1, sizeof(*db));
 GIT_ERROR_CHECK_ALLOC(db);

 db->repo = repo;

 *out = db;
 GIT_REFCOUNT_INC(db);
 return 0;
}
