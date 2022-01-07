
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stack_t_ {scalar_t__ stack; int flags; int size; } ;
struct sighand {scalar_t__ altstack; int altstack_size; } ;
struct TYPE_3__ {int esp; } ;
struct TYPE_4__ {TYPE_1__ cpu; } ;


 int SS_DISABLE_ ;
 int SS_ONSTACK_ ;
 TYPE_2__* current ;
 scalar_t__ is_on_altstack (int ,struct sighand*) ;

__attribute__((used)) static void altstack_to_user(struct sighand *sighand, struct stack_t_ *user_stack) {
    user_stack->stack = sighand->altstack;
    user_stack->size = sighand->altstack_size;
    user_stack->flags = 0;
    if (sighand->altstack == 0)
        user_stack->flags |= SS_DISABLE_;
    if (is_on_altstack(current->cpu.esp, sighand))
        user_stack->flags |= SS_ONSTACK_;
}
