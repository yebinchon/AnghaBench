
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* mh; } ;
typedef TYPE_2__ uiTableModel ;
struct tablePart {int valueColumn; TYPE_1__* tv; } ;
typedef scalar_t__ gpointer ;
typedef int gchar ;
struct TYPE_7__ {void* (* CellValue ) (TYPE_3__*,TYPE_2__*,int,int ) ;} ;
struct TYPE_5__ {TYPE_2__* model; } ;
typedef int GtkTreePath ;
typedef int GtkCellRendererToggle ;


 int gtk_tree_path_free (int *) ;
 int* gtk_tree_path_get_indices (int *) ;
 int * gtk_tree_path_new_from_string (int *) ;
 int onEdited (struct tablePart*,int ,int *,int ) ;
 void* stub1 (TYPE_3__*,TYPE_2__*,int,int ) ;
 int uiTableModelGiveInt (int) ;
 int uiTableModelTakeInt (void*) ;

__attribute__((used)) static void checkboxToggled(GtkCellRendererToggle *r, gchar *pathstr, gpointer data)
{
 struct tablePart *part = (struct tablePart *) data;
 GtkTreePath *path;
 int row;
 uiTableModel *m;
 void *value;
 int intval;

 path = gtk_tree_path_new_from_string(pathstr);
 row = gtk_tree_path_get_indices(path)[0];
 gtk_tree_path_free(path);
 m = part->tv->model;
 value = (*(m->mh->CellValue))(m->mh, m, row, part->valueColumn);
 intval = !uiTableModelTakeInt(value);
 onEdited(part, part->valueColumn, pathstr, uiTableModelGiveInt(intval));
}
