
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float xscale; float bias; float yscale; } ;


 TYPE_1__ uis ;

void UI_AdjustFrom640( float *x, float *y, float *w, float *h ) {

 *x = *x * uis.xscale + uis.bias;
 *y *= uis.yscale;
 *w *= uis.xscale;
 *h *= uis.yscale;
}
