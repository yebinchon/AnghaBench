
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* mh; } ;
typedef TYPE_2__ uiTableModel ;
struct tablePart {TYPE_1__* tv; } ;
struct TYPE_8__ {int (* SetCellValue ) (TYPE_4__*,TYPE_2__*,int,int,void const*) ;} ;
struct TYPE_6__ {TYPE_2__* model; } ;
typedef int GtkTreePath ;


 int gtk_tree_path_free (int *) ;
 int* gtk_tree_path_get_indices (int *) ;
 int * gtk_tree_path_new_from_string (char const*) ;
 int stub1 (TYPE_4__*,TYPE_2__*,int,int,void const*) ;
 int uiTableModelRowChanged (TYPE_2__*,int) ;

__attribute__((used)) static void onEdited(struct tablePart *part, int column, const char *pathstr, const void *data)
{
 GtkTreePath *path;
 int row;
 uiTableModel *m;

 path = gtk_tree_path_new_from_string(pathstr);
 row = gtk_tree_path_get_indices(path)[0];
 gtk_tree_path_free(path);
 m = part->tv->model;
 (*(m->mh->SetCellValue))(m->mh, m, row, column, data);

 uiTableModelRowChanged(m, row);
}
