
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiButton ;


 int hideOne ;
 int one ;
 int showOne ;
 int uiControl (int ) ;
 int uiControlShow (int ) ;

__attribute__((used)) static void onShowAll(uiButton *b, void *data)
{
 uiControlShow(uiControl(hideOne));
 uiControlShow(uiControl(one));
 uiControlShow(uiControl(showOne));
}
