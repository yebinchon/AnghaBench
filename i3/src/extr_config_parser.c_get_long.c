
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long num; } ;
struct TYPE_4__ {TYPE_1__ val; int * identifier; } ;


 TYPE_2__* stack ;
 scalar_t__ strcmp (char const*,int *) ;

__attribute__((used)) static long get_long(const char *identifier) {
    for (int c = 0; c < 10; c++) {
        if (stack[c].identifier == ((void*)0))
            break;
        if (strcmp(identifier, stack[c].identifier) == 0)
            return stack[c].val.num;
    }
    return 0;
}
