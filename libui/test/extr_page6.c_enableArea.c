
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiButton ;


 int area ;
 int uiControl (int ) ;
 int uiControlDisable (int ) ;
 int uiControlEnable (int ) ;

__attribute__((used)) static void enableArea(uiButton *b, void *data)
{
 if (data != ((void*)0))
  uiControlEnable(uiControl(area));
 else
  uiControlDisable(uiControl(area));
}
