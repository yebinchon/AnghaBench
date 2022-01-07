
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ gint ;
typedef int gboolean ;
struct TYPE_3__ {scalar_t__ stamp; int user_data; } ;
typedef int GtkTreeModel ;
typedef TYPE_1__ GtkTreeIter ;


 int FALSE ;
 int GINT_TO_POINTER (scalar_t__) ;
 scalar_t__ GPOINTER_TO_INT (int ) ;
 scalar_t__ STAMP_BAD ;
 scalar_t__ STAMP_GOOD ;
 int TRUE ;

__attribute__((used)) static gboolean uiTableModel_iter_previous(GtkTreeModel *mm, GtkTreeIter *iter)
{
 gint row;

 if (iter->stamp != STAMP_GOOD)
  return FALSE;
 row = GPOINTER_TO_INT(iter->user_data);
 row--;
 if (row < 0) {
  iter->stamp = STAMP_BAD;
  return FALSE;
 }
 iter->user_data = GINT_TO_POINTER(row);
 return TRUE;
}
