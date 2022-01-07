
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int call_identifier; } ;
struct TYPE_8__ {scalar_t__ next_state; TYPE_1__ extra; } ;
typedef TYPE_2__ cmdp_token ;
struct TYPE_10__ {int needs_tree_render; int client; int json_gen; } ;
struct TYPE_9__ {int needs_tree_render; scalar_t__ next_state; int client; int json_gen; } ;


 int GENERATED_call (int ,TYPE_3__*) ;
 scalar_t__ INITIAL ;
 scalar_t__ __CALL ;
 int clear_stack () ;
 TYPE_5__ command_output ;
 scalar_t__ state ;
 TYPE_3__ subcommand_output ;

__attribute__((used)) static void next_state(const cmdp_token *token) {
    if (token->next_state == __CALL) {
        subcommand_output.json_gen = command_output.json_gen;
        subcommand_output.client = command_output.client;
        subcommand_output.needs_tree_render = 0;
        GENERATED_call(token->extra.call_identifier, &subcommand_output);
        state = subcommand_output.next_state;


        if (subcommand_output.needs_tree_render)
            command_output.needs_tree_render = 1;
        clear_stack();
        return;
    }

    state = token->next_state;
    if (state == INITIAL) {
        clear_stack();
    }
}
