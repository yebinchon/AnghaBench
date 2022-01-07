
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {int * L; } ;
typedef TYPE_1__ ocb ;
typedef int cf_gf128 ;


 size_t MAX_L ;
 int cf_gf128_add (int ,int ,int ) ;
 int cf_gf128_double (int ,int ) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void ocb_add_Ln(ocb *o, uint32_t n, cf_gf128 out)
{

  if (n < MAX_L)
  {
    cf_gf128_add(o->L[n], out, out);
    return;
  }


  cf_gf128 accum;
  memcpy(accum, o->L[MAX_L - 1], sizeof accum);

  for (uint32_t i = MAX_L - 1; i < n; i++)
  {
    cf_gf128 next;
    cf_gf128_double(accum, next);
    memcpy(accum, next, sizeof accum);
  }

  cf_gf128_add(accum, out, out);
}
