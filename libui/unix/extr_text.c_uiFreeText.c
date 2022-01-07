
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_free (char*) ;

void uiFreeText(char *t)
{
 g_free(t);
}
