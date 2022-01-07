
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_signature ;
typedef int git_reference ;
struct TYPE_5__ {TYPE_2__* backend; } ;
typedef TYPE_1__ git_refdb ;
struct TYPE_6__ {int (* unlock ) (TYPE_2__*,void*,int,int,int const*,int const*,char const*) ;} ;


 int assert (TYPE_1__*) ;
 int stub1 (TYPE_2__*,void*,int,int,int const*,int const*,char const*) ;

int git_refdb_unlock(git_refdb *db, void *payload, int success, int update_reflog, const git_reference *ref, const git_signature *sig, const char *message)
{
 assert(db);

 return db->backend->unlock(db->backend, payload, success, update_reflog, ref, sig, message);
}
