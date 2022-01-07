
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int range; } ;
typedef TYPE_1__ uiSlider ;


 int gtk_range_get_value (int ) ;

int uiSliderValue(uiSlider *s)
{
 return gtk_range_get_value(s->range);
}
