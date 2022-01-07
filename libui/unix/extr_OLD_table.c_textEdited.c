
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tablePart {int textColumn; } ;
typedef scalar_t__ gpointer ;
typedef int gchar ;
typedef int GtkCellRendererText ;


 int onEdited (struct tablePart*,int ,int *,int *) ;

__attribute__((used)) static void textEdited(GtkCellRendererText *renderer, gchar *path, gchar *newText, gpointer data)
{
 struct tablePart *part = (struct tablePart *) data;

 onEdited(part, part->textColumn, path, newText);
}
