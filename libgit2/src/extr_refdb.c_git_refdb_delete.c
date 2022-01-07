
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct git_refdb {TYPE_1__* backend; } ;
typedef int git_oid ;
struct TYPE_2__ {int (* del ) (TYPE_1__*,char const*,int const*,char const*) ;} ;


 int assert (int) ;
 int stub1 (TYPE_1__*,char const*,int const*,char const*) ;

int git_refdb_delete(struct git_refdb *db, const char *ref_name, const git_oid *old_id, const char *old_target)
{
 assert(db && db->backend);
 return db->backend->del(db->backend, ref_name, old_id, old_target);
}
