
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiButton ;


 int mainwin ;
 int uiMsgBoxError (int ,char*,char*) ;

__attribute__((used)) static void onMsgBoxErrorClicked(uiButton *b, void *data)
{
 uiMsgBoxError(mainwin,
  "This message box describes an error.",
  "More detailed information can be shown here.");
}
