
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int xcb_connection_t ;
struct TYPE_6__ {int active; } ;
typedef TYPE_1__ Output ;


 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 TYPE_1__* create_root_output (int *) ;
 int init_ws_for_output (TYPE_1__*) ;
 int output_init_con (TYPE_1__*) ;
 int outputs ;

__attribute__((used)) static void use_root_output(xcb_connection_t *conn) {
    Output *s = create_root_output(conn);
    s->active = 1;
    TAILQ_INSERT_TAIL(&outputs, s, outputs);
    output_init_con(s);
    init_ws_for_output(s);
}
