
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; } ;


 int TRUE ;
 TYPE_1__* allocations ;
 int g_free (char*) ;
 int g_ptr_array_foreach (TYPE_1__*,int ,char**) ;
 int g_ptr_array_free (TYPE_1__*,int ) ;
 int uiprivUserBug (char*,char*) ;
 int uninitComplain ;

void uiprivUninitAlloc(void)
{
 char *str = ((void*)0);

 if (allocations->len == 0) {
  g_ptr_array_free(allocations, TRUE);
  return;
 }
 g_ptr_array_foreach(allocations, uninitComplain, &str);
 uiprivUserBug("Some data was leaked; either you left a uiControl lying around or there's a bug in libui itself. Leaked data:\n%s", str);
 g_free(str);
}
