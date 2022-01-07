
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ layout; scalar_t__ type; } ;
struct TYPE_4__ {scalar_t__ fullscreen_mode; int border_style; TYPE_2__* parent; } ;
typedef TYPE_1__ Con ;


 int BS_NONE ;
 int BS_NORMAL ;
 scalar_t__ CF_GLOBAL ;
 scalar_t__ CF_OUTPUT ;
 scalar_t__ CT_DOCKAREA ;
 int DLOG (char*) ;
 scalar_t__ L_STACKED ;
 scalar_t__ L_TABBED ;
 int con_num_children (TYPE_2__*) ;

int con_border_style(Con *con) {
    if (con->fullscreen_mode == CF_OUTPUT || con->fullscreen_mode == CF_GLOBAL) {
        DLOG("this one is fullscreen! overriding BS_NONE\n");
        return BS_NONE;
    }

    if (con->parent->layout == L_STACKED)
        return (con_num_children(con->parent) == 1 ? con->border_style : BS_NORMAL);

    if (con->parent->layout == L_TABBED && con->border_style != BS_NORMAL)
        return (con_num_children(con->parent) == 1 ? con->border_style : BS_NORMAL);

    if (con->parent->type == CT_DOCKAREA)
        return BS_NONE;

    return con->border_style;
}
