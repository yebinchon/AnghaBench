
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiButton ;


 int hideOne ;
 int one ;
 int showOne ;
 int uiControl (int ) ;
 int uiControlHide (int ) ;

__attribute__((used)) static void onHideAll(uiButton *b, void *data)
{
 uiControlHide(uiControl(hideOne));
 uiControlHide(uiControl(one));
 uiControlHide(uiControl(showOne));
}
