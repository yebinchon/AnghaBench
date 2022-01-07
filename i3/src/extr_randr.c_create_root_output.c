
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xcb_connection_t ;
struct output_name {char* name; } ;
struct TYPE_7__ {int height_in_pixels; int width_in_pixels; } ;
struct TYPE_5__ {int height; int width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_6__ {int active; int names_head; TYPE_1__ rect; } ;
typedef TYPE_2__ Output ;


 int SLIST_INIT (int *) ;
 int SLIST_INSERT_HEAD (int *,struct output_name*,int ) ;
 int names ;
 TYPE_3__* root_screen ;
 void* scalloc (int,int) ;

Output *create_root_output(xcb_connection_t *conn) {
    Output *s = scalloc(1, sizeof(Output));

    s->active = 0;
    s->rect.x = 0;
    s->rect.y = 0;
    s->rect.width = root_screen->width_in_pixels;
    s->rect.height = root_screen->height_in_pixels;

    struct output_name *output_name = scalloc(1, sizeof(struct output_name));
    output_name->name = "xroot-0";
    SLIST_INIT(&s->names_head);
    SLIST_INSERT_HEAD(&s->names_head, output_name, names);

    return s;
}
