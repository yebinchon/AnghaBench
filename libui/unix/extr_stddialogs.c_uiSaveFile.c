
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiWindow ;


 int GTK_FILE_CHOOSER_ACTION_SAVE ;
 char* filedialog (int ,int ,char*) ;
 int windowWindow (int *) ;

char *uiSaveFile(uiWindow *parent)
{
 return filedialog(windowWindow(parent), GTK_FILE_CHOOSER_ACTION_SAVE, "_Save");
}
