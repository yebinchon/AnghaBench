
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int yajl_gen ;
struct TYPE_3__ {int height; int width; int y; int x; } ;
typedef TYPE_1__ Rect ;


 int integer ;
 int map_close ;
 int map_open ;
 int y (int ,...) ;
 int ystr (char const*) ;

__attribute__((used)) static void dump_rect(yajl_gen gen, const char *name, Rect r) {
    ystr(name);
    y(map_open);
    ystr("x");
    y(integer, r.x);
    ystr("y");
    y(integer, r.y);
    ystr("width");
    y(integer, r.width);
    ystr("height");
    y(integer, r.height);
    y(map_close);
}
