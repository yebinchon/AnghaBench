
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int restart_mode; } ;
struct TYPE_4__ {int sticky; } ;


 int LOG (char*,int,int ) ;
 TYPE_3__* current_swallow ;
 TYPE_1__* json_node ;
 int last_key ;
 scalar_t__ parsing_swallows ;
 scalar_t__ strcasecmp (int ,char*) ;
 int swallow_is_empty ;
 TYPE_1__* to_focus ;

__attribute__((used)) static int json_bool(void *ctx, int val) {
    LOG("bool %d for key %s\n", val, last_key);
    if (strcasecmp(last_key, "focused") == 0 && val) {
        to_focus = json_node;
    }

    if (strcasecmp(last_key, "sticky") == 0)
        json_node->sticky = val;

    if (parsing_swallows) {
        if (strcasecmp(last_key, "restart_mode") == 0) {
            current_swallow->restart_mode = val;
            swallow_is_empty = 0;
        }
    }

    return 1;
}
