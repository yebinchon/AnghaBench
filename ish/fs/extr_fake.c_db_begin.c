
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int begin; } ;
struct mount {TYPE_1__ stmt; int lock; } ;


 int db_exec_reset (struct mount*,int ) ;
 int lock (int *) ;

void db_begin(struct mount *mount) {
    lock(&mount->lock);
    db_exec_reset(mount, mount->stmt.begin);
}
