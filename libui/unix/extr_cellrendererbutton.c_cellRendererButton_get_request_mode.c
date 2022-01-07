
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkSizeRequestMode ;
typedef int GtkCellRenderer ;


 int GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH ;

__attribute__((used)) static GtkSizeRequestMode cellRendererButton_get_request_mode(GtkCellRenderer *r)
{
 return GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH;
}
