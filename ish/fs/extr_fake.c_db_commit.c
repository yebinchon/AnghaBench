
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int commit; } ;
struct mount {int lock; TYPE_1__ stmt; } ;


 int db_exec_reset (struct mount*,int ) ;
 int unlock (int *) ;

void db_commit(struct mount *mount) {
    db_exec_reset(mount, mount->stmt.commit);
    unlock(&mount->lock);
}
