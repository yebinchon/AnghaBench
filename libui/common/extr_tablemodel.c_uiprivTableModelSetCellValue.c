
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uiTableValue ;
struct TYPE_4__ {int (* SetCellValue ) (TYPE_1__*,int *,int,int,int const*) ;} ;
typedef TYPE_1__ uiTableModelHandler ;
typedef int uiTableModel ;


 int stub1 (TYPE_1__*,int *,int,int,int const*) ;
 TYPE_1__* uiprivTableModelHandler (int *) ;

void uiprivTableModelSetCellValue(uiTableModel *m, int row, int column, const uiTableValue *value)
{
 uiTableModelHandler *mh;

 mh = uiprivTableModelHandler(m);
 (*(mh->SetCellValue))(mh, m, row, column, value);
}
