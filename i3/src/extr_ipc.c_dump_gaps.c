
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int yajl_gen ;
struct TYPE_3__ {int left; int bottom; int right; int top; int inner; } ;
typedef TYPE_1__ gaps_t ;


 int integer ;
 int map_close ;
 int map_open ;
 int y (int ,...) ;
 int ystr (char const*) ;

__attribute__((used)) static void dump_gaps(yajl_gen gen, const char *name, gaps_t gaps) {
    ystr(name);
    y(map_open);
    ystr("inner");
    y(integer, gaps.inner);



    ystr("outer");
    y(integer, gaps.top);

    ystr("top");
    y(integer, gaps.top);
    ystr("right");
    y(integer, gaps.right);
    ystr("bottom");
    y(integer, gaps.bottom);
    ystr("left");
    y(integer, gaps.left);
    y(map_close);
}
