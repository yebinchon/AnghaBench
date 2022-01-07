
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* uECC_Curve ;
struct TYPE_3__ {int num_bytes; } ;



int uECC_curve_public_key_size(uECC_Curve curve) {
    return 2 * curve->num_bytes;
}
