
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ceil (double) ;
 double dpi ;
 int * root_screen ;

int logical_px(const int logical) {
    if (root_screen == ((void*)0)) {


        return logical;
    }







    if ((dpi / 96.0) < 1.25)
        return logical;
    return ceil((dpi / 96.0) * logical);
}
