
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* error_message; } ;
typedef TYPE_1__ CommandResult ;


 int FREE (TYPE_1__*) ;

void command_result_free(CommandResult *result) {
    if (result == ((void*)0))
        return;

    FREE(result->error_message);
    FREE(result);
}
