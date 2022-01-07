
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b; int a; } ;
struct TYPE_4__ {int v64; TYPE_1__ v32; } ;
typedef TYPE_2__ vconv64_t ;
typedef int u64 ;
typedef int u32 ;



u64 v64_from_v32ab (const u32 v32a, const u32 v32b)
{
  vconv64_t v;

  v.v32.a = v32a;
  v.v32.b = v32b;

  return v.v64;
}
