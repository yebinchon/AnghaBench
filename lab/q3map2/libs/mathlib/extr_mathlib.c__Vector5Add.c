
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* vec5_t ;



void _Vector5Add( vec5_t va, vec5_t vb, vec5_t out ){
 out[0] = va[0] + vb[0];
 out[1] = va[1] + vb[1];
 out[2] = va[2] + vb[2];
 out[3] = va[3] + vb[3];
 out[4] = va[4] + vb[4];
}
