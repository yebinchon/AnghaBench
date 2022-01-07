
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* window; } ;
struct TYPE_5__ {scalar_t__ id; } ;
typedef TYPE_2__ Con ;


 scalar_t__ XCB_WINDOW_NONE ;
 int * con_get_workspace (TYPE_2__*) ;

bool con_has_managed_window(Con *con) {
    return (con != ((void*)0) && con->window != ((void*)0) && con->window->id != XCB_WINDOW_NONE && con_get_workspace(con) != ((void*)0));
}
