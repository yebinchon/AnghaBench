
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiWindow ;


 int GTK_BUTTONS_OK ;
 int GTK_MESSAGE_ERROR ;
 int msgbox (int ,char const*,char const*,int ,int ) ;
 int windowWindow (int *) ;

void uiMsgBoxError(uiWindow *parent, const char *title, const char *description)
{
 msgbox(windowWindow(parent), title, description, GTK_MESSAGE_ERROR, GTK_BUTTONS_OK);
}
