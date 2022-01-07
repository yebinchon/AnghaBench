
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b; int a; } ;
struct TYPE_4__ {int v32; TYPE_1__ v16; } ;
typedef TYPE_2__ vconv32_t ;
typedef int u32 ;
typedef int u16 ;



u32 v32_from_v16ab (const u16 v16a, const u16 v16b)
{
  vconv32_t v;

  v.v16.a = v16a;
  v.v16.b = v16b;

  return v.v32;
}
