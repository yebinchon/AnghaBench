
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int unlock; scalar_t__ lock; int reflog_delete; int reflog_rename; int reflog_write; int reflog_read; int free; int ensure_log; int has_log; int del; int rename; int write; int iterator; int lookup; int exists; } ;
typedef TYPE_1__ git_refdb_backend ;
struct TYPE_8__ {TYPE_1__* backend; } ;
typedef TYPE_2__ git_refdb ;


 int GIT_EINVALID ;
 int GIT_ERROR_CHECK_VERSION (TYPE_1__*,int ,char*) ;
 int GIT_ERROR_REFERENCE ;
 int GIT_REFDB_BACKEND_VERSION ;
 int git_error_set (int ,char*) ;
 int refdb_free_backend (TYPE_2__*) ;

int git_refdb_set_backend(git_refdb *db, git_refdb_backend *backend)
{
 GIT_ERROR_CHECK_VERSION(backend, GIT_REFDB_BACKEND_VERSION, "git_refdb_backend");

 if (!backend->exists || !backend->lookup || !backend->iterator ||
     !backend->write || !backend->rename || !backend->del ||
     !backend->has_log || !backend->ensure_log || !backend->free ||
     !backend->reflog_read || !backend->reflog_write ||
     !backend->reflog_rename || !backend->reflog_delete ||
     (backend->lock && !backend->unlock)) {
  git_error_set(GIT_ERROR_REFERENCE, "incomplete refdb backend implementation");
  return GIT_EINVALID;
 }

 refdb_free_backend(db);
 db->backend = backend;

 return 0;
}
