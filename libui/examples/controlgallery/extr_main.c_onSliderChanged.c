
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiSlider ;


 int pbar ;
 int spinbox ;
 int uiProgressBarSetValue (int ,int ) ;
 int uiSliderValue (int *) ;
 int uiSpinboxSetValue (int ,int ) ;

__attribute__((used)) static void onSliderChanged(uiSlider *s, void *data)
{
 uiSpinboxSetValue(spinbox, uiSliderValue(s));
 uiProgressBarSetValue(pbar, uiSliderValue(s));
}
