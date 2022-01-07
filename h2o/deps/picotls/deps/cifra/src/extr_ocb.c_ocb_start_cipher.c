
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int i; int * out; } ;
typedef TYPE_1__ ocb ;



__attribute__((used)) static void ocb_start_cipher(ocb *o, uint8_t *output)
{
  o->i = 1;
  o->out = output;
}
