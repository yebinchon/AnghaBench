
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkStyleContext ;


 int g_object_unref (int *) ;

void unsetButtonStyle(GtkStyleContext *context)
{
 g_object_unref(context);
}
