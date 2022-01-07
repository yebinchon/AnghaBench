
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* input; char* errorposition; char* error; int success; } ;


 int exit_code ;
 int fprintf (int ,char*,char*) ;
 TYPE_1__ last_reply ;
 int stderr ;

__attribute__((used)) static int reply_end_map_cb(void *params) {
    if (!last_reply.success) {
        if (last_reply.input) {
            fprintf(stderr, "ERROR: Your command: %s\n", last_reply.input);
            fprintf(stderr, "ERROR:               %s\n", last_reply.errorposition);
        }
        fprintf(stderr, "ERROR: %s\n", last_reply.error);
        exit_code = 2;
    }
    return 1;
}
