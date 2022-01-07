
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uiTableValueType ;
struct TYPE_4__ {int (* ColumnType ) (TYPE_1__*,int *,int) ;} ;
typedef TYPE_1__ uiTableModelHandler ;
typedef int uiTableModel ;


 int stub1 (TYPE_1__*,int *,int) ;
 TYPE_1__* uiprivTableModelHandler (int *) ;

uiTableValueType uiprivTableModelColumnType(uiTableModel *m, int column)
{
 uiTableModelHandler *mh;

 mh = uiprivTableModelHandler(m);
 return (*(mh->ColumnType))(mh, m, column);
}
