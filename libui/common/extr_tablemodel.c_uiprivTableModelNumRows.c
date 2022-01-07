
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* NumRows ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ uiTableModelHandler ;
typedef int uiTableModel ;


 int stub1 (TYPE_1__*,int *) ;
 TYPE_1__* uiprivTableModelHandler (int *) ;

int uiprivTableModelNumRows(uiTableModel *m)
{
 uiTableModelHandler *mh;

 mh = uiprivTableModelHandler(m);
 return (*(mh->NumRows))(mh, m);
}
