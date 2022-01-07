
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mumble_update_coordinates2 (float*,float*,float*,float*,float*,float*) ;

void mumble_update_coordinates(float fPosition[3], float fFront[3], float fTop[3])
{
 mumble_update_coordinates2(fPosition, fFront, fTop, fPosition, fFront, fTop);
}
