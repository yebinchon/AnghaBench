
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int dock; } ;
struct TYPE_11__ {struct TYPE_11__* parent; int * name; int swallow_head; } ;
typedef int Match ;
typedef TYPE_1__ Con ;


 int DLOG (char*,...) ;
 int LOG (char*,...) ;
 int M_DONTCHECK ;
 int TAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 TYPE_1__* con_get_workspace (TYPE_1__*) ;
 TYPE_1__* con_new_skeleton (int *,int *) ;
 TYPE_2__* current_swallow ;
 TYPE_1__* incomplete ;
 TYPE_1__* json_node ;
 scalar_t__ last_key ;
 int match_init (TYPE_2__*) ;
 int matches ;
 int parsing_deco_rect ;
 int parsing_gaps ;
 int parsing_geometry ;
 int parsing_rect ;
 scalar_t__ parsing_swallows ;
 int parsing_window_rect ;
 TYPE_2__* smalloc (int) ;
 scalar_t__ strcasecmp (scalar_t__,char*) ;
 int swallow_is_empty ;

__attribute__((used)) static int json_start_map(void *ctx) {
    LOG("start of map, last_key = %s\n", last_key);
    if (parsing_swallows) {
        LOG("creating new swallow\n");
        current_swallow = smalloc(sizeof(Match));
        match_init(current_swallow);
        current_swallow->dock = M_DONTCHECK;
        TAILQ_INSERT_TAIL(&(json_node->swallow_head), current_swallow, matches);
        swallow_is_empty = 1;
    } else {
        if (!parsing_rect && !parsing_deco_rect && !parsing_window_rect && !parsing_geometry && !parsing_gaps) {
            if (last_key && strcasecmp(last_key, "floating_nodes") == 0) {
                DLOG("New floating_node\n");
                Con *ws = con_get_workspace(json_node);
                json_node = con_new_skeleton(((void*)0), ((void*)0));
                json_node->name = ((void*)0);
                json_node->parent = ws;
                DLOG("Parent is workspace = %p\n", ws);
            } else {
                Con *parent = json_node;
                json_node = con_new_skeleton(((void*)0), ((void*)0));
                json_node->name = ((void*)0);
                json_node->parent = parent;
            }

            incomplete++;
            DLOG("incomplete = %d\n", incomplete);
        }
    }
    return 1;
}
