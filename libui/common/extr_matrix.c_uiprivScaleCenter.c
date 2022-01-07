
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void uiprivScaleCenter(double xCenter, double yCenter, double *x, double *y)
{
 *x = xCenter - (*x * xCenter);
 *y = yCenter - (*y * yCenter);
}
