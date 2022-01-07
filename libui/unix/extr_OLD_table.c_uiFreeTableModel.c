
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiTableModel ;


 int g_object_unref (int *) ;

void uiFreeTableModel(uiTableModel *m)
{
 g_object_unref(m);
}
