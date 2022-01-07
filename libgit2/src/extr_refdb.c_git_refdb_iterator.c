
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* db; } ;
typedef TYPE_1__ git_reference_iterator ;
struct TYPE_9__ {TYPE_4__* backend; } ;
typedef TYPE_2__ git_refdb ;
struct TYPE_10__ {int (* iterator ) (TYPE_1__**,TYPE_4__*,char const*) ;} ;


 int GIT_ERROR_REFERENCE ;
 int GIT_REFCOUNT_INC (TYPE_2__*) ;
 int git_error_set (int ,char*) ;
 int stub1 (TYPE_1__**,TYPE_4__*,char const*) ;

int git_refdb_iterator(git_reference_iterator **out, git_refdb *db, const char *glob)
{
 int error;

 if (!db->backend || !db->backend->iterator) {
  git_error_set(GIT_ERROR_REFERENCE, "this backend doesn't support iterators");
  return -1;
 }

 if ((error = db->backend->iterator(out, db->backend, glob)) < 0)
  return error;

 GIT_REFCOUNT_INC(db);
 (*out)->db = db;

 return 0;
}
