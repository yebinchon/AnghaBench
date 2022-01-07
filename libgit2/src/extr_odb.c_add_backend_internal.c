
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ino_t ;
struct TYPE_11__ {TYPE_2__* odb; } ;
typedef TYPE_1__ git_odb_backend ;
struct TYPE_12__ {int backends; } ;
typedef TYPE_2__ git_odb ;
struct TYPE_13__ {int priority; int is_alternate; TYPE_1__* backend; int disk_inode; } ;
typedef TYPE_3__ backend_internal ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_3__*) ;
 int GIT_ERROR_CHECK_VERSION (TYPE_1__*,int ,char*) ;
 int GIT_ODB_BACKEND_VERSION ;
 int assert (int) ;
 int git__free (TYPE_3__*) ;
 TYPE_3__* git__malloc (int) ;
 scalar_t__ git_vector_insert (int *,TYPE_3__*) ;
 int git_vector_sort (int *) ;

__attribute__((used)) static int add_backend_internal(
 git_odb *odb, git_odb_backend *backend,
 int priority, bool is_alternate, ino_t disk_inode)
{
 backend_internal *internal;

 assert(odb && backend);

 GIT_ERROR_CHECK_VERSION(backend, GIT_ODB_BACKEND_VERSION, "git_odb_backend");


 assert(!backend->odb || backend->odb == odb);

 internal = git__malloc(sizeof(backend_internal));
 GIT_ERROR_CHECK_ALLOC(internal);

 internal->backend = backend;
 internal->priority = priority;
 internal->is_alternate = is_alternate;
 internal->disk_inode = disk_inode;

 if (git_vector_insert(&odb->backends, internal) < 0) {
  git__free(internal);
  return -1;
 }

 git_vector_sort(&odb->backends);
 internal->backend->odb = odb;
 return 0;
}
