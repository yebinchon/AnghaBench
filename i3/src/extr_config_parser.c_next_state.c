
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
typedef scalar_t__ cmdp_state ;
struct TYPE_10__ {int json_gen; } ;
struct TYPE_9__ {scalar_t__ next_state; int json_gen; } ;


 int GENERATED_call (int ,TYPE_3__*) ;
 scalar_t__ INITIAL ;
 scalar_t__ __CALL ;
 int clear_stack () ;
 TYPE_5__ command_output ;
 scalar_t__ state ;
 scalar_t__* statelist ;
 int statelist_idx ;
 TYPE_3__ subcommand_output ;

__attribute__((used)) static void next_state(const cmdp_token *token) {
    cmdp_state _next_state = token->next_state;



    if (token->next_state == __CALL) {
        subcommand_output.json_gen = command_output.json_gen;
        GENERATED_call(token->extra.call_identifier, &subcommand_output);
        _next_state = subcommand_output.next_state;
        clear_stack();
    }

    state = _next_state;
    if (state == INITIAL) {
        clear_stack();
    }



    for (int i = 0; i < statelist_idx; i++) {
        if (statelist[i] != _next_state)
            continue;
        statelist_idx = i + 1;
        return;
    }


    statelist[statelist_idx++] = _next_state;
}
