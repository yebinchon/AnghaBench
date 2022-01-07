
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiSpinbox ;


 int pbar ;
 int slider ;
 int uiProgressBarSetValue (int ,int ) ;
 int uiSliderSetValue (int ,int ) ;
 int uiSpinboxValue (int *) ;

__attribute__((used)) static void onSpinboxChanged(uiSpinbox *s, void *data)
{
 uiSliderSetValue(slider, uiSpinboxValue(s));
 uiProgressBarSetValue(pbar, uiSpinboxValue(s));
}
