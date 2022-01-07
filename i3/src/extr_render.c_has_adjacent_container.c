
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int direction_t ;
typedef int Con ;


 int CF_GLOBAL ;
 int CF_OUTPUT ;
 int * con_get_fullscreen_con (int *,int ) ;
 int * con_get_workspace (int *) ;
 scalar_t__ con_has_parent (int *,int *) ;
 int resize_find_tiling_participants (int **,int **,int ,int) ;

bool has_adjacent_container(Con *con, direction_t direction) {
    Con *workspace = con_get_workspace(con);
    Con *fullscreen = con_get_fullscreen_con(workspace, CF_GLOBAL);
    if (fullscreen == ((void*)0))
        fullscreen = con_get_fullscreen_con(workspace, CF_OUTPUT);


    if (con == fullscreen)
        return 0;

    Con *first = con;
    Con *second = ((void*)0);
    bool found_neighbor = resize_find_tiling_participants(&first, &second, direction, 0);
    if (!found_neighbor)
        return 0;


    if (fullscreen == ((void*)0))
        return 1;


    return con_has_parent(con, fullscreen) && con_has_parent(second, fullscreen);
}
