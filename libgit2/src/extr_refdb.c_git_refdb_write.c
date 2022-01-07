
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_signature ;
struct TYPE_8__ {TYPE_2__* db; } ;
typedef TYPE_1__ git_reference ;
struct TYPE_9__ {TYPE_3__* backend; } ;
typedef TYPE_2__ git_refdb ;
typedef int git_oid ;
struct TYPE_10__ {int (* write ) (TYPE_3__*,TYPE_1__*,int,int const*,char const*,int const*,char const*) ;} ;


 int GIT_REFCOUNT_INC (TYPE_2__*) ;
 int assert (int) ;
 int stub1 (TYPE_3__*,TYPE_1__*,int,int const*,char const*,int const*,char const*) ;

int git_refdb_write(git_refdb *db, git_reference *ref, int force, const git_signature *who, const char *message, const git_oid *old_id, const char *old_target)
{
 assert(db && db->backend);

 GIT_REFCOUNT_INC(db);
 ref->db = db;

 return db->backend->write(db->backend, ref, force, who, message, old_id, old_target);
}
