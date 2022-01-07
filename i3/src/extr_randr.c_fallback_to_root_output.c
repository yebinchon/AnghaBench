
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int active; } ;


 int init_ws_for_output (TYPE_1__*) ;
 int output_init_con (TYPE_1__*) ;
 TYPE_1__* root_output ;

__attribute__((used)) static void fallback_to_root_output(void) {
    root_output->active = 1;
    output_init_con(root_output);
    init_ws_for_output(root_output);
}
