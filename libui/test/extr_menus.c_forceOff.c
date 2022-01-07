
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiWindow ;
typedef int uiMenuItem ;


 int enabledItem ;
 int uiMenuItemSetChecked (int ,int ) ;

__attribute__((used)) static void forceOff(uiMenuItem *item, uiWindow *w, void *data)
{
 uiMenuItemSetChecked(enabledItem, 0);
}
