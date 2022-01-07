
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uiTableModelClass ;
struct TYPE_2__ {int finalize; int dispose; } ;


 TYPE_1__* G_OBJECT_CLASS (int *) ;
 int uiTableModel_dispose ;
 int uiTableModel_finalize ;

__attribute__((used)) static void uiTableModel_class_init(uiTableModelClass *class)
{
 G_OBJECT_CLASS(class)->dispose = uiTableModel_dispose;
 G_OBJECT_CLASS(class)->finalize = uiTableModel_finalize;
}
