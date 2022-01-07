
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int direction_t ;


 int D_DOWN ;
 int D_LEFT ;
 int D_RIGHT ;
 int D_UP ;
 int ELOG (char*) ;
 int assert (int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static direction_t parse_direction(const char *str) {
    if (strcmp(str, "left") == 0) {
        return D_LEFT;
    } else if (strcmp(str, "right") == 0) {
        return D_RIGHT;
    } else if (strcmp(str, "up") == 0) {
        return D_UP;
    } else if (strcmp(str, "down") == 0) {
        return D_DOWN;
    } else {
        ELOG("Invalid direction. This is a parser bug.\n");
        assert(0);
    }
}
