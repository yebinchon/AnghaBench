
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiMenu ;


 int newItem (int *,int ,int *) ;
 int typeSeparator ;

void uiMenuAppendSeparator(uiMenu *m)
{
 newItem(m, typeSeparator, ((void*)0));
}
