
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiButton ;


 int mainwin ;
 int uiMsgBox (int ,char*,char*) ;

__attribute__((used)) static void onMsgBoxClicked(uiButton *b, void *data)
{
 uiMsgBox(mainwin,
  "This is a normal message box.",
  "More detailed information can be shown here.");
}
