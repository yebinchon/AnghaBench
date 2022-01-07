
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;


 int g_free (int ) ;

void uiFreeInitError(const char *err)
{
 g_free((gpointer) err);
}
