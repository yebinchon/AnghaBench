
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uiTextStretch ;
typedef int PangoStretch ;


 int * pangoStretches ;

PangoStretch uiprivStretchToPangoStretch(uiTextStretch s)
{
 return pangoStretches[s];
}
