
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long num; } ;
struct TYPE_4__ {char const* identifier; int type; TYPE_1__ val; } ;


 int STACK_LONG ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 TYPE_2__* stack ;
 int stderr ;

__attribute__((used)) static void push_long(const char *identifier, long num) {
    for (int c = 0; c < 10; c++) {
        if (stack[c].identifier != ((void*)0)) {
            continue;
        }

        stack[c].identifier = identifier;
        stack[c].val.num = num;
        stack[c].type = STACK_LONG;
        return;
    }




    fprintf(stderr, "BUG: commands_parser stack full. This means either a bug "
                    "in the code, or a new command which contains more than "
                    "10 identified tokens.\n");
    exit(1);
}
