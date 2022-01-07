
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_4__ {int stamp; } ;
typedef int GtkTreeModel ;
typedef TYPE_1__ GtkTreeIter ;


 int BAD_STAMP ;
 int FALSE ;

__attribute__((used)) static gboolean uiTableModel_iter_parent(GtkTreeModel *mb, GtkTreeIter *iter, GtkTreeIter *child)
{
 iter->stamp = BAD_STAMP;
 return FALSE;
}
