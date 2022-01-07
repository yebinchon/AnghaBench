
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ num; int * str; } ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ val; int * identifier; } ;


 scalar_t__ STACK_STR ;
 int free (int *) ;
 TYPE_2__* stack ;

__attribute__((used)) static void clear_stack(void) {
    for (int c = 0; c < 10; c++) {
        if (stack[c].type == STACK_STR)
            free(stack[c].val.str);
        stack[c].identifier = ((void*)0);
        stack[c].val.str = ((void*)0);
        stack[c].val.num = 0;
    }
}
