
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiMenuItem ;
typedef int uiMenu ;


 int * newItem (int *,int ,char const*) ;
 int typeCheckbox ;

uiMenuItem *uiMenuAppendCheckItem(uiMenu *m, const char *name)
{
 return newItem(m, typeCheckbox, name);
}
