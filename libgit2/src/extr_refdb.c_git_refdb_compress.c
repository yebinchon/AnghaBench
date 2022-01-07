
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* backend; } ;
typedef TYPE_1__ git_refdb ;
struct TYPE_6__ {int (* compress ) (TYPE_2__*) ;} ;


 int assert (TYPE_1__*) ;
 int stub1 (TYPE_2__*) ;

int git_refdb_compress(git_refdb *db)
{
 assert(db);

 if (db->backend->compress)
  return db->backend->compress(db->backend);

 return 0;
}
