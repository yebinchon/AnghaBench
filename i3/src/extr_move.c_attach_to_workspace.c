
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ direction_t ;
struct TYPE_9__ {double percent; int focus_head; int nodes_head; struct TYPE_9__* parent; } ;
typedef TYPE_1__ Con ;


 int CALL (TYPE_1__*,int ) ;
 scalar_t__ D_DOWN ;
 scalar_t__ D_RIGHT ;
 int TAILQ_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int con_detach (TYPE_1__*) ;
 int con_fix_percent (TYPE_1__*) ;
 int focused ;
 int nodes ;
 int on_remove_child ;

__attribute__((used)) static void attach_to_workspace(Con *con, Con *ws, direction_t direction) {
    con_detach(con);
    Con *old_parent = con->parent;
    con->parent = ws;

    if (direction == D_RIGHT || direction == D_DOWN) {
        TAILQ_INSERT_HEAD(&(ws->nodes_head), con, nodes);
    } else {
        TAILQ_INSERT_TAIL(&(ws->nodes_head), con, nodes);
    }
    TAILQ_INSERT_TAIL(&(ws->focus_head), con, focused);




    con->percent = 0.0;
    con_fix_percent(ws);

    con_fix_percent(old_parent);
    CALL(old_parent, on_remove_child);
}
