
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dtoa_context {int dummy; } ;
struct TYPE_3__ {int wds; int * x; } ;
typedef TYPE_1__ Bigint ;


 int hi0bits (struct dtoa_context*,int ) ;
 int kmask ;

__attribute__((used)) static int
dshift(struct dtoa_context* C, Bigint *b, int p2)
{
 int rv = hi0bits(C, b->x[b->wds-1]) - 4;
 if (p2 > 0)
  rv -= p2;
 return rv & kmask;
 }
