
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* backend; } ;
typedef TYPE_1__ git_refdb ;
struct TYPE_5__ {int (* exists ) (int*,TYPE_2__*,char const*) ;} ;


 int assert (int ) ;
 int stub1 (int*,TYPE_2__*,char const*) ;

int git_refdb_exists(int *exists, git_refdb *refdb, const char *ref_name)
{
 assert(exists && refdb && refdb->backend);

 return refdb->backend->exists(exists, refdb->backend, ref_name);
}
