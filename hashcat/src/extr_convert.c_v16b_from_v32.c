
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b; } ;
struct TYPE_4__ {TYPE_1__ v16; int v32; } ;
typedef TYPE_2__ vconv32_t ;
typedef int u32 ;
typedef int u16 ;



u16 v16b_from_v32 (const u32 v32)
{
  vconv32_t v;

  v.v32 = v32;

  return v.v16.b;
}
