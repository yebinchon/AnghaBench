
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* backend; } ;
typedef TYPE_1__ git_refdb ;
struct TYPE_5__ {int (* lock ) (void**,TYPE_2__*,char const*) ;} ;


 int GIT_ERROR_REFERENCE ;
 int assert (int ) ;
 int git_error_set (int ,char*) ;
 int stub1 (void**,TYPE_2__*,char const*) ;

int git_refdb_lock(void **payload, git_refdb *db, const char *refname)
{
 assert(payload && db && refname);

 if (!db->backend->lock) {
  git_error_set(GIT_ERROR_REFERENCE, "backend does not support locking");
  return -1;
 }

 return db->backend->lock(payload, db->backend, refname);
}
