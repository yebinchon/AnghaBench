
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {scalar_t__ disable_focus_follows_mouse; } ;
struct TYPE_4__ {int * con; } ;
typedef TYPE_1__ Output ;
typedef int Con ;


 int ELOG (char*) ;
 int * con_descend_focused (int ) ;
 int con_focus (int *) ;
 int con_get_workspace (int *) ;
 TYPE_3__ config ;
 int * focused ;
 TYPE_1__* get_output_containing (int ,int ) ;
 int output_get_content (int *) ;
 int tree_render () ;
 int workspace_show (int ) ;

__attribute__((used)) static void check_crossing_screen_boundary(uint32_t x, uint32_t y) {
    Output *output;


    if (config.disable_focus_follows_mouse)
        return;

    if ((output = get_output_containing(x, y)) == ((void*)0)) {
        ELOG("ERROR: No such screen\n");
        return;
    }

    if (output->con == ((void*)0)) {
        ELOG("ERROR: The screen is not recognized by i3 (no container associated)\n");
        return;
    }


    Con *old_focused = focused;
    Con *next = con_descend_focused(output_get_content(output->con));


    workspace_show(con_get_workspace(next));
    con_focus(next);


    if (old_focused != focused)
        tree_render();
}
