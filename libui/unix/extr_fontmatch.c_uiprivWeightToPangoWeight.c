
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiTextWeight ;
typedef int PangoWeight ;



PangoWeight uiprivWeightToPangoWeight(uiTextWeight w)
{
 return (PangoWeight) w;
}
