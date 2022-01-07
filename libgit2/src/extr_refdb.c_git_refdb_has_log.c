
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* backend; } ;
typedef TYPE_1__ git_refdb ;
struct TYPE_5__ {int (* has_log ) (TYPE_2__*,char const*) ;} ;


 int assert (int) ;
 int stub1 (TYPE_2__*,char const*) ;

int git_refdb_has_log(git_refdb *db, const char *refname)
{
 assert(db && refname);

 return db->backend->has_log(db->backend, refname);
}
