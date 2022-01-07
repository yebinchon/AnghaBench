
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiButton ;


 int spaced ;
 int uiCheckboxSetChecked (int ,int ) ;

__attribute__((used)) static void forceSpaced(uiButton *b, void *data)
{
 uiCheckboxSetChecked(spaced, data != ((void*)0));
}
