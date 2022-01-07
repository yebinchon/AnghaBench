
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiMenuItem ;
typedef int gboolean ;


 int FALSE ;
 int TRUE ;
 int setChecked (int *,int ) ;

void uiMenuItemSetChecked(uiMenuItem *item, int checked)
{
 gboolean c;


 c = FALSE;
 if (checked)
  c = TRUE;
 setChecked(item, c);
}
