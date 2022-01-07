
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiAreaHandler ;
typedef int uiAreaDrawParams ;
typedef int uiArea ;


 int runDrawTest (int ,int *) ;
 int uiComboboxSelected (int ) ;
 int which ;

__attribute__((used)) static void handlerDraw(uiAreaHandler *a, uiArea *area, uiAreaDrawParams *p)
{
 runDrawTest(uiComboboxSelected(which), p);
}
