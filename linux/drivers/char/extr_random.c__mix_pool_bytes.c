
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct entropy_store {int input_rotate; unsigned long add_ptr; int* pool; TYPE_1__* poolinfo; } ;
typedef int __u32 ;
struct TYPE_2__ {int poolwords; unsigned long tap1; unsigned long tap2; unsigned long tap3; unsigned long tap4; unsigned long tap5; } ;


 int rol32 (int ,int) ;
 int* twist_table ;

__attribute__((used)) static void _mix_pool_bytes(struct entropy_store *r, const void *in,
       int nbytes)
{
 unsigned long i, tap1, tap2, tap3, tap4, tap5;
 int input_rotate;
 int wordmask = r->poolinfo->poolwords - 1;
 const char *bytes = in;
 __u32 w;

 tap1 = r->poolinfo->tap1;
 tap2 = r->poolinfo->tap2;
 tap3 = r->poolinfo->tap3;
 tap4 = r->poolinfo->tap4;
 tap5 = r->poolinfo->tap5;

 input_rotate = r->input_rotate;
 i = r->add_ptr;


 while (nbytes--) {
  w = rol32(*bytes++, input_rotate);
  i = (i - 1) & wordmask;


  w ^= r->pool[i];
  w ^= r->pool[(i + tap1) & wordmask];
  w ^= r->pool[(i + tap2) & wordmask];
  w ^= r->pool[(i + tap3) & wordmask];
  w ^= r->pool[(i + tap4) & wordmask];
  w ^= r->pool[(i + tap5) & wordmask];


  r->pool[i] = (w >> 3) ^ twist_table[w & 7];







  input_rotate = (input_rotate + (i ? 7 : 14)) & 31;
 }

 r->input_rotate = input_rotate;
 r->add_ptr = i;
}
