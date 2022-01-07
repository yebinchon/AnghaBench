
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiGroup ;


 int append (int *,int ) ;
 int group ;
 int * uiNewGroup (char const*) ;

uiGroup *newGroup(const char *text)
{
 uiGroup *g;

 g = uiNewGroup(text);
 append(g, group);
 return g;
}
