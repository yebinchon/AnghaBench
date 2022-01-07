
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {char* pattern; } ;
struct TYPE_15__ {TYPE_1__ font; } ;
struct TYPE_14__ {int command; } ;
struct TYPE_13__ {scalar_t__ parse_error; scalar_t__ needs_tree_render; } ;
typedef int Con ;
typedef TYPE_2__ CommandResult ;
typedef TYPE_3__ Binding ;


 TYPE_3__* binding_copy (TYPE_3__*) ;
 int binding_free (TYPE_3__*) ;
 int command_error_nagbar_pid ;
 TYPE_8__ config ;
 int errorfilename ;
 int free (char*) ;
 int ipc_send_binding_event (char*,TYPE_3__*) ;
 TYPE_2__* parse_command (char*,int *,int *) ;
 int sasprintf (char**,char*,int ,...) ;
 char* sstrdup (int ) ;
 int start_nagbar (int *,char**) ;
 int tree_render () ;

CommandResult *run_binding(Binding *bind, Con *con) {
    char *command;




    if (con == ((void*)0))
        command = sstrdup(bind->command);
    else
        sasprintf(&command, "[con_id=\"%p\"] %s", con, bind->command);

    Binding *bind_cp = binding_copy(bind);
    CommandResult *result = parse_command(command, ((void*)0), ((void*)0));
    free(command);

    if (result->needs_tree_render)
        tree_render();

    if (result->parse_error) {
        char *pageraction;
        sasprintf(&pageraction, "i3-sensible-pager \"%s\"\n", errorfilename);
        char *argv[] = {
            ((void*)0),
            "-f",
            config.font.pattern,
            "-t",
            "error",
            "-m",
            "The configured command for this shortcut could not be run successfully.",
            "-b",
            "show errors",
            pageraction,
            ((void*)0)};
        start_nagbar(&command_error_nagbar_pid, argv);
        free(pageraction);
    }

    ipc_send_binding_event("run", bind_cp);
    binding_free(bind_cp);

    return result;
}
