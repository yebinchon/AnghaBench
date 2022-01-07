
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uiTableValue ;
struct TYPE_4__ {int * (* CellValue ) (TYPE_1__*,int *,int,int) ;} ;
typedef TYPE_1__ uiTableModelHandler ;
typedef int uiTableModel ;


 int * stub1 (TYPE_1__*,int *,int,int) ;
 TYPE_1__* uiprivTableModelHandler (int *) ;

uiTableValue *uiprivTableModelCellValue(uiTableModel *m, int row, int column)
{
 uiTableModelHandler *mh;

 mh = uiprivTableModelHandler(m);
 return (*(mh->CellValue))(mh, m, row, column);
}
