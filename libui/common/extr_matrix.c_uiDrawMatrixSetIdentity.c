
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int M11; int M22; scalar_t__ M32; scalar_t__ M31; scalar_t__ M21; scalar_t__ M12; } ;
typedef TYPE_1__ uiDrawMatrix ;



void uiDrawMatrixSetIdentity(uiDrawMatrix *m)
{
 m->M11 = 1;
 m->M12 = 0;
 m->M21 = 0;
 m->M22 = 1;
 m->M31 = 0;
 m->M32 = 0;
}
