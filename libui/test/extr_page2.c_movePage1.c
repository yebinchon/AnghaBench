
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiButton ;


 int mainBox ;
 int mainTab ;
 int moveBack ;
 int moveBackText ;
 int moveOutText ;
 int page1 ;
 int uiBoxAppend (int ,int ,int) ;
 int uiBoxDelete (int ,int) ;
 int uiButtonSetText (int *,int ) ;
 int uiControl (int ) ;
 int uiTabDelete (int ,int ) ;
 int uiTabInsertAt (int ,char*,int ,int ) ;

__attribute__((used)) static void movePage1(uiButton *b, void *data)
{
 if (moveBack) {
  uiBoxDelete(mainBox, 1);
  uiTabInsertAt(mainTab, "Page 1", 0, uiControl(page1));
  uiButtonSetText(b, moveOutText);
  moveBack = 0;
  return;
 }
 uiTabDelete(mainTab, 0);
 uiBoxAppend(mainBox, uiControl(page1), 1);
 uiButtonSetText(b, moveBackText);
 moveBack = 1;
}
