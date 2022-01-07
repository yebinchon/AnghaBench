
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* normal; int signbits; } ;
typedef TYPE_1__ cplane_t ;



void SetPlaneSignbits (cplane_t *out) {
 int bits, j;


 bits = 0;
 for (j=0 ; j<3 ; j++) {
  if (out->normal[j] < 0) {
   bits |= 1<<j;
  }
 }
 out->signbits = bits;
}
