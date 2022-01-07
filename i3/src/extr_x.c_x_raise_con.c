
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int con_state ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ frame; } ;
typedef TYPE_2__ Con ;


 int CIRCLEQ_INSERT_HEAD (int *,int *,int *) ;
 int CIRCLEQ_REMOVE (int *,int *,int *) ;
 int * state_for_frame (int ) ;
 int state_head ;

void x_raise_con(Con *con) {
    con_state *state;
    state = state_for_frame(con->frame.id);


    CIRCLEQ_REMOVE(&state_head, state, state);
    CIRCLEQ_INSERT_HEAD(&state_head, state, state);
}
