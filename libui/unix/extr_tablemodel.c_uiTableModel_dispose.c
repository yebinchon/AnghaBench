
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* dispose ) (int *) ;} ;
typedef int GObject ;


 TYPE_1__* G_OBJECT_CLASS (int ) ;
 int stub1 (int *) ;
 int uiTableModel_parent_class ;

__attribute__((used)) static void uiTableModel_dispose(GObject *obj)
{
 G_OBJECT_CLASS(uiTableModel_parent_class)->dispose(obj);
}
