
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* db; } ;
typedef TYPE_1__ git_reflog ;
struct TYPE_7__ {TYPE_3__* backend; } ;
typedef TYPE_2__ git_refdb ;
struct TYPE_8__ {int (* reflog_write ) (TYPE_3__*,TYPE_1__*) ;} ;


 int assert (int) ;
 int stub1 (TYPE_3__*,TYPE_1__*) ;

int git_reflog_write(git_reflog *reflog)
{
 git_refdb *db;

 assert(reflog && reflog->db);

 db = reflog->db;
 return db->backend->reflog_write(db->backend, reflog);
}
