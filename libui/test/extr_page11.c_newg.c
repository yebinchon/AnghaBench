
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiGroup ;


 int uiGroupSetChild (int *,int *) ;
 int * uiNewGroup (char const*) ;

__attribute__((used)) static uiGroup *newg(const char *n, int s)
{
 uiGroup *g;

 g = uiNewGroup(n);
 if (s)
  uiGroupSetChild(g, ((void*)0));
 return g;
}
