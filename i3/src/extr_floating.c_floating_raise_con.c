
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* parent; int name; } ;
struct TYPE_7__ {int floating_head; } ;
typedef TYPE_2__ Con ;


 int DLOG (char*,TYPE_2__*,int ) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_2__*,int ) ;
 int floating_windows ;

void floating_raise_con(Con *con) {
    DLOG("Raising floating con %p / %s\n", con, con->name);
    TAILQ_REMOVE(&(con->parent->floating_head), con, floating_windows);
    TAILQ_INSERT_TAIL(&(con->parent->floating_head), con, floating_windows);
}
