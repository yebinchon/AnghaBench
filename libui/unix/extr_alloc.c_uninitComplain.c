
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gpointer ;


 int * TYPE (scalar_t__) ;
 int g_free (char*) ;
 char* g_strdup_printf (char*,...) ;

__attribute__((used)) static void uninitComplain(gpointer ptr, gpointer data)
{
 char **str = (char **) data;
 char *str2;

 if (*str == ((void*)0))
  *str = g_strdup_printf("");
 str2 = g_strdup_printf("%s%p %s\n", *str, ptr, *TYPE(ptr));
 g_free(*str);
 *str = str2;
}
