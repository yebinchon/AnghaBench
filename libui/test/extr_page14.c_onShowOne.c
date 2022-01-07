
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiButton ;


 int one ;
 int uiControl (int ) ;
 int uiControlShow (int ) ;

__attribute__((used)) static void onShowOne(uiButton *b, void *data)
{
 uiControlShow(uiControl(one));
}
