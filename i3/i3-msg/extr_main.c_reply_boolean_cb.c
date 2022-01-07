
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int success; } ;


 int last_key ;
 TYPE_1__ last_reply ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int reply_boolean_cb(void *params, int val) {
    if (strcmp(last_key, "success") == 0)
        last_reply.success = val;
    return 1;
}
