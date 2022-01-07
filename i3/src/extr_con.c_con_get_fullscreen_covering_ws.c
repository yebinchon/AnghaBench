
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Con ;


 int CF_GLOBAL ;
 int CF_OUTPUT ;
 int * con_get_fullscreen_con (int *,int ) ;
 int * croot ;

Con *con_get_fullscreen_covering_ws(Con *ws) {
    if (!ws) {
        return ((void*)0);
    }
    Con *fs = con_get_fullscreen_con(croot, CF_GLOBAL);
    if (!fs) {
        return con_get_fullscreen_con(ws, CF_OUTPUT);
    }
    return fs;
}
