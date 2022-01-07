
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* str; } ;
struct TYPE_4__ {char const* identifier; TYPE_1__ val; int type; } ;


 int STACK_STR ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int sasprintf (char**,char*,char*,char const*) ;
 char* sstrdup (char const*) ;
 TYPE_2__* stack ;
 int stderr ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static void push_string(const char *identifier, const char *str) {
    for (int c = 0; c < 10; c++) {
        if (stack[c].identifier != ((void*)0) &&
            strcmp(stack[c].identifier, identifier) != 0)
            continue;
        if (stack[c].identifier == ((void*)0)) {

            stack[c].identifier = identifier;
            stack[c].val.str = sstrdup(str);
            stack[c].type = STACK_STR;
        } else {

            char *prev = stack[c].val.str;
            sasprintf(&(stack[c].val.str), "%s,%s", prev, str);
            free(prev);
        }
        return;
    }




    fprintf(stderr, "BUG: commands_parser stack full. This means either a bug "
                    "in the code, or a new command which contains more than "
                    "10 identified tokens.\n");
    exit(1);
}
